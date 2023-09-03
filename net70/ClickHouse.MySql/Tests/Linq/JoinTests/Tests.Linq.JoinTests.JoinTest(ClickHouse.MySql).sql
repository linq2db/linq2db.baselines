BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	s.submission_id
FROM
	t_ws_submissions s
		INNER JOIN t_ws_policies _ ON _.submission_id = s.submission_id AND _.policy_nbr = '111'

