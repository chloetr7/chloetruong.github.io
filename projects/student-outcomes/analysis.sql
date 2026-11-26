SELECT factor, score_gap_points, round(score_gap_points / (SELECT max(score_gap_points) FROM observations) * 100, 1) AS pct_of_largest_gap FROM observations ORDER BY score_gap_points DESC;
