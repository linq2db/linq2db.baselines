(107368) SELECT 
	t107368.Id = t107367.Id
FROM [DctSetpointtype(107367)] as t107367 (spt)
		LEFT JOIN (
			[VWellTree(107370)] as t107370 (t2)
				INNER JOIN [DctOu(107372)] as t107372 (tp2) ON ({t107370.ShopId?}? = {t107372.Id})
				LEFT JOIN [UacUsersDatagroup(107375)] as t107375 (cudg) ON ({t107372.Id} = {t107375.DatagroupId} AND {t107375.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107380)] as t107380 (oudg) ON ({t107372.ParentId?}? = {t107380.DatagroupId} AND {t107380.UserId} = 150 AND {t107380.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107400)] as t107400 (d) ON ({t107370.WellId?}? = {t107400.WellId})
		)  ON ({t107400.SetpointtypeId} = {t107367.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107375.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107380.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
