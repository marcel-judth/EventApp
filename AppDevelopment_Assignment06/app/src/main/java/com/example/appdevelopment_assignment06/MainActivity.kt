package com.example.appdevelopment_assignment06

import android.os.Build
import android.os.Bundle
import android.widget.DatePicker
import android.widget.Toast
import androidx.annotation.RequiresApi
import androidx.appcompat.app.AppCompatActivity
import kotlinx.android.synthetic.main.activity_main.*
import java.time.LocalDate
import java.time.Period
import java.util.*
import java.util.concurrent.TimeUnit

class MainActivity : AppCompatActivity() {

    @RequiresApi(Build.VERSION_CODES.O)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        var datePicker = findViewById<DatePicker>(R.id.datePickerFrom)
        val today = Calendar.getInstance()
        datePicker.init(today.get(Calendar.YEAR), today.get(Calendar.MONTH),
            today.get(Calendar.DAY_OF_MONTH)

        ) { view, year, month, day ->
            val month = month + 1
            val msg = "You Selected: $day/$month/$year"
            Toast.makeText(this@MainActivity, msg, Toast.LENGTH_SHORT).show()
        }
        datePicker = findViewById(R.id.datePickerTo)
        datePicker.init(today.get(Calendar.YEAR), today.get(Calendar.MONTH),
            today.get(Calendar.DAY_OF_MONTH)

        ) { view, year, month, day ->
            val month = month + 1
            val msg = "You Selected: $day/$month/$year"
            Toast.makeText(this@MainActivity, msg, Toast.LENGTH_SHORT).show()
        }

        btnCalculate.setOnClickListener {
            var dateFrom = LocalDate.of(datePickerFrom.year, datePickerFrom.month, datePickerFrom.dayOfMonth)
            var dateTo = LocalDate.of(datePickerTo.year, datePickerTo.month, datePickerTo.dayOfMonth)
            var period = Period.between(dateFrom, dateTo)
            var days = period.years * 365 + period.months * 31 + period.days;
            txtResult.text = "Difference in days: $days"
        }
    }
}
