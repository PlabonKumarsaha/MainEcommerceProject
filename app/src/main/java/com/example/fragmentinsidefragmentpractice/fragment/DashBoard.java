package com.example.fragmentinsidefragmentpractice.fragment;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.example.fragmentinsidefragmentpractice.R;

/**
 * A simple {@link Fragment} subclass.
 */
public class DashBoard extends Fragment implements View.OnClickListener {
    EditText phone, password;
    Button login;

    public DashBoard() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_dash_board, container, false);
        phone = view.findViewById(R.id.phone);
        password = view.findViewById(R.id.password);
        login = view.findViewById(R.id.login);
        login.setOnClickListener(this);


        return view;
    }

    @Override
    public void onClick(View v) {

        String userPhone = phone.getText().toString();
        String userPassword = password.getText().toString();
        if (userPassword.isEmpty() || userPassword.length() <= 8) {
            password.setError("Must have 9 character");
            password.requestFocus();

        }

        if (userPhone.length() != 11 || userPhone.isEmpty() || !userPhone.startsWith("01")) {
            phone.setError("Must have 11 charecter");
            phone.requestFocus();
        }
        Toast.makeText(getContext(), "cdbfdff", Toast.LENGTH_SHORT).show();
    }
}
