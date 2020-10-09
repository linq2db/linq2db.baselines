BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 100

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[t_1].[Id], 
	[t_1].[Value], 
	[t3].[Value1], 
	[t3].[Value2], 
	[t3].[is_empty]
FROM
	[SampleClass] [t_1]
		OUTER APPLY ( 
			SELECT TOP (@take) 
				[t2].[Value1], 
				[t2].[Value2], 
				1 as [is_empty]
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
						[t1].[Value1], 
						[t1].[Value2]
					FROM
						( 
							SELECT 
								DateAdd(day, 3, CURRENT_TIMESTAMP) as [Value1], 
								DateAdd(day, 4, CURRENT_TIMESTAMP) as [Value2]
						) [t1]
				) [t2]
		) [t3]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [SampleClass]

