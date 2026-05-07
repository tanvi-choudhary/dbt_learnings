{{ dbt_utils.date_spine(
    datepart="day",
    start_date="cast('2026-01-01' as date)",
    end_date="cast('2026-01-06' as date)"
   )
}}