﻿BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue4469Table]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Issue4469Table]', N'U') IS NULL)
	CREATE TABLE [Issue4469Table]
	(
		[Integer] Int            NOT NULL,
		[Decimal] Decimal(10, 5) NOT NULL,
		[Double]  Float          NOT NULL
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [Issue4469Table]
(
	[Integer],
	[Decimal],
	[Double]
)
VALUES
(100,100,100)

BeforeExecute
-- SqlServer.2022
DECLARE @param Int -- Int32
SET     @param = 33
DECLARE @param_1 Decimal
SET     @param_1 = 33
DECLARE @param_2 Float -- Double
SET     @param_2 = 33

SELECT TOP (2)
	CAST([v].[Integer] AS Float) / @param,
	CAST([v].[Decimal] AS Float) / @param_1,
	[v].[Double] / @param_2
FROM
	[Issue4469Table] [v]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue4469Table]

