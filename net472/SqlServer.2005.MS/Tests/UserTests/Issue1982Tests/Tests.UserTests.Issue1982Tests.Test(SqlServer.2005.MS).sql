﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1982Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1982Table]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1982Table]', N'U') IS NULL)
	CREATE TABLE [Issue1982Table]
	(
		[Time]     DateTime NOT NULL,
		[DateTime] DateTime NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Issue1982Table] [_]
			WHERE
				[_].[Time] < Cast(Convert(Char, [_].[DateTime], 114) as DateTime)
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1982Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1982Table]

