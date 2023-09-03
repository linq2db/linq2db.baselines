BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @policyNumber NVarChar(4000) -- String
SET     @policyNumber = N'111'

SELECT
	[s].[submission_id]
FROM
	[t_ws_submissions] [s]
		INNER JOIN [t_ws_policies] [_] ON [_].[submission_id] = [s].[submission_id] AND [_].[policy_nbr] = @policyNumber

