BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @personId Int -- Int32
SET     @personId = 0
DECLARE @personId_1 Int -- Int32
SET     @personId_1 = 2

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t9]
				CROSS JOIN (
					SELECT
						COUNT([t3].[PersonID]) as [c1]
					FROM
						(
							SELECT
								[t1].[PersonID]
							FROM
								[Patient] [t1]
							WHERE
								[t1].[PersonID] = @personId AND [t1].[PersonID] NOT IN (
									SELECT
										[t2].[PersonID]
									FROM
										[Patient] [t2]
									WHERE
										[t2].[PersonID] = @personId_1
								)
						) [t3]
				) [t4]
				CROSS JOIN (
					SELECT
						COUNT([t7].[PersonID]) as [c1]
					FROM
						(
							SELECT
								[t5].[PersonID]
							FROM
								[Patient] [t5]
							WHERE
								[t5].[PersonID] = @personId_1 AND [t5].[PersonID] NOT IN (
									SELECT
										[t6].[PersonID]
									FROM
										[Patient] [t6]
									WHERE
										[t6].[PersonID] = @personId
								)
						) [t7]
				) [t8]
		WHERE
			[t4].[c1] = 0 AND [t8].[c1] = 0
	), 1, 0)

