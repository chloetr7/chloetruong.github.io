SELECT round(a.overdue_pct - b.overdue_pct, 2) AS reduction_percentage_points FROM observations a CROSS JOIN observations b WHERE a.snapshot='Earlier' AND b.snapshot='Later';
