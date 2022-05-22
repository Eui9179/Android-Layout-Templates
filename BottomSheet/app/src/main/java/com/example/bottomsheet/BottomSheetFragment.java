package com.example.bottomsheet;

import android.content.Context;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;

import org.w3c.dom.Text;

import java.util.Objects;

public class BottomSheetFragment extends BottomSheetDialogFragment {
    public interface InputListener {
        void sendInput(String output);
    }
    public InputListener mInputListener;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
          return inflater.inflate(R.layout.fragment_bottom_sheet, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        Bundle bundle = getArguments();

        TextView text = view.findViewById(R.id.text_frag);
        Button buttonSend = view.findViewById(R.id.btn_send);
        EditText editInput = view.findViewById(R.id.edit_frag);


        text.setText(bundle.getString("inputText"));

        buttonSend.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                mInputListener.sendInput(editInput.getText().toString());
                dismiss();
            }
        });
    }

    @Override
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        try {
            mInputListener = (InputListener) getActivity();
        } catch (ClassCastException e) {
            Log.e("ClassCastException", e.getMessage());
        }
    }
}