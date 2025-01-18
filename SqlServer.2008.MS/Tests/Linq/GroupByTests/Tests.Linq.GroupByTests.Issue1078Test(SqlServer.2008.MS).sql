BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(CASE
		WHEN [grp].[Active] = 0 THEN 1
		ELSE NULL
	END)
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

