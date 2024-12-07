(99045) SELECT 
	t99045.Id = t99044.Id
FROM [DctSetpointtype(99044)] as t99044 (spt)
		LEFT JOIN (
			[VWellTree(99047)] as t99047 (t2)
				INNER JOIN [DctOu(99049)] as t99049 (tp2) ON ({t99047.ShopId?}? = {t99049.Id})
				LEFT JOIN [UacUsersDatagroup(99052)] as t99052 (cudg) ON ({t99049.Id} = {t99052.DatagroupId} AND {t99052.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(99057)] as t99057 (oudg) ON ({t99049.ParentId?}? = {t99057.DatagroupId} AND {t99057.UserId} = 150 AND {t99057.Inheritablepermission} > 0)
				INNER JOIN [Deviation(99077)] as t99077 (d) ON ({t99047.WellId?}? = {t99077.WellId})
		)  ON ({t99077.SetpointtypeId} = {t99044.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t99052.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t99057.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
