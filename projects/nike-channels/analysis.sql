SELECT channel, yoy_pct, round(yoy_pct - (SELECT yoy_pct FROM observations WHERE channel='Total revenue'), 2) AS gap_to_total_pp FROM observations ORDER BY yoy_pct;
