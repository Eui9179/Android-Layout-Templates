package com.example.bottomsheet;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.google.android.material.bottomsheet.BottomSheetDialog;

import java.util.zip.Inflater;

public class MainActivity extends AppCompatActivity implements BottomSheetFragment.InputListener{
    BottomSheetFragment bottomSheetFragment;
    EditText inputText;
    TextView outputText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        inputText = findViewById(R.id.edit_main);
        outputText = findViewById(R.id.text_main);

        findViewById(R.id.btn_open).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                bottomSheetFragment = new BottomSheetFragment();

                Bundle bundle = new Bundle();

                bundle.putString("inputText", inputText.getText().toString());
                bottomSheetFragment.setArguments(bundle);

                bottomSheetFragment.show(getSupportFragmentManager(), bottomSheetFragment.getTag());
            }
        });
    }

    @Override
    public void sendInput(String output) {
        outputText.setText(output);
    }
}