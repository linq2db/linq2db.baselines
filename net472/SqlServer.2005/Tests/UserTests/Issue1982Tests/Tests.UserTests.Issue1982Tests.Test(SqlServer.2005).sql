BeforeExecute
-- SqlServer.2005

CREATE TABLE [Issue1982Table]
(
	[Time]     DateTime NOT NULL,
	[DateTime] DateTime NOT NULL
)

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

DROP TABLE [Issue1982Table]

