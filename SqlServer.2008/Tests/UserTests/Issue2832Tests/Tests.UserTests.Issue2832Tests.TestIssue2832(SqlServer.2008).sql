(237930) SELECT 
	t237930.Id = t237929.Id
FROM [DctSetpointtype(237929)] as t237929 (spt)
		LEFT JOIN (
			[VWellTree(237932)] as t237932 (t2)
				INNER JOIN [DctOu(237934)] as t237934 (tp2) ON ({t237932.ShopId?}? = {t237934.Id})
				LEFT JOIN [UacUsersDatagroup(237937)] as t237937 (cudg) ON ({t237934.Id} = {t237937.DatagroupId} AND {t237937.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(237942)] as t237942 (oudg) ON ({t237934.ParentId?}? = {t237942.DatagroupId} AND {t237942.UserId} = 150 AND {t237942.Inheritablepermission} > 0)
				INNER JOIN [Deviation(237962)] as t237962 (d) ON ({t237932.WellId?}? = {t237962.WellId})
		)  ON ({t237962.SetpointtypeId} = {t237929.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t237937.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t237942.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
