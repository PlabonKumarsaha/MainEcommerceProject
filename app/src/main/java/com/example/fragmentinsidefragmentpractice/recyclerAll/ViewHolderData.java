package com.example.fragmentinsidefragmentpractice.recyclerAll;

import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.fragmentinsidefragmentpractice.R;

public class ViewHolderData extends RecyclerView.ViewHolder {
    ImageButton sampleImage;
    TextView sampleText;

    public ViewHolderData(@NonNull View itemView) {
        super(itemView);
        sampleImage = itemView.findViewById(R.id.sampleImage);
        sampleText = itemView.findViewById(R.id.sampleText);
    }
}
