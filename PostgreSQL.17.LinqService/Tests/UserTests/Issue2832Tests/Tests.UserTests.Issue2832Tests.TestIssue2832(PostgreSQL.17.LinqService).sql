(107396) SELECT 
	t107396.Id = t107395.Id
FROM [DctSetpointtype(107395)] as t107395 (spt)
		LEFT JOIN (
			[VWellTree(107398)] as t107398 (t2)
				INNER JOIN [DctOu(107400)] as t107400 (tp2) ON ({t107398.ShopId?}? = {t107400.Id})
				LEFT JOIN [UacUsersDatagroup(107403)] as t107403 (cudg) ON ({t107400.Id} = {t107403.DatagroupId} AND {t107403.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107408)] as t107408 (oudg) ON ({t107400.ParentId?}? = {t107408.DatagroupId} AND {t107408.UserId} = 150 AND {t107408.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107428)] as t107428 (d) ON ({t107398.WellId?}? = {t107428.WellId})
		)  ON ({t107428.SetpointtypeId} = {t107395.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107403.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107408.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
