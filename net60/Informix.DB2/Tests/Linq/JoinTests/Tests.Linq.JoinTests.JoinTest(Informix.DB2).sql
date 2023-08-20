BeforeExecute
-- Informix.DB2 Informix
DECLARE @policyNumber VarChar(3) -- String
SET     @policyNumber = '111'

SELECT
	s.submission_id
FROM
	t_ws_submissions s
		INNER JOIN t_ws_policies t1 ON t1.submission_id = s.submission_id AND t1.policy_nbr = @policyNumber

