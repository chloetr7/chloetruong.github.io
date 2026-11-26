SELECT a.method, round(a.recall_pct-b.recall_pct,2) AS gain_over_rules_pp FROM observations a CROSS JOIN observations b WHERE b.method='Rules' ORDER BY gain_over_rules_pp DESC;
