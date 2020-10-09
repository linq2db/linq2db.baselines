BeforeExecute
-- SqlServer.2005

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
SELECT 1,100

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[t_1].[Id], 
	[t_1].[Value], 
	[t2].[Value1], 
	[t2].[Value2], 
	[t2].[c1]
FROM
	[SampleClass] [t_1]
		OUTER APPLY ( 
			SELECT TOP (@take) 
				[t1].[Value1], 
				[t1].[Value2], 
				1 as [c1]
			FROM
				( 
					SELECT 
						DateAdd(day, [t].[Value], CURRENT_TIMESTAMP) as [Value1], 
						DateAdd(day, 2, CURRENT_TIMESTAMP) as [Value2]
					FROM
						[SampleClass] [t]
					WHERE
						[t].[Value] = 1
					UNION
					SELECT 
						DateAdd(day, 3, CURRENT_TIMESTAMP) as [Value1], 
						DateAdd(day, 4, CURRENT_TIMESTAMP) as [Value2]
				) [t1]
		) [t2]

BeforeExecute
-- SqlServer.2005

DROP TABLE [SampleClass]

