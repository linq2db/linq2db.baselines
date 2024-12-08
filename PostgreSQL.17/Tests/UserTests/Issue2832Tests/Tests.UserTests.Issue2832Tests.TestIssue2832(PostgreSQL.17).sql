(107313) SELECT 
	t107313.Id = t107312.Id
FROM [DctSetpointtype(107312)] as t107312 (spt)
		LEFT JOIN (
			[VWellTree(107315)] as t107315 (t2)
				INNER JOIN [DctOu(107317)] as t107317 (tp2) ON ({t107315.ShopId?}? = {t107317.Id})
				LEFT JOIN [UacUsersDatagroup(107320)] as t107320 (cudg) ON ({t107317.Id} = {t107320.DatagroupId} AND {t107320.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107325)] as t107325 (oudg) ON ({t107317.ParentId?}? = {t107325.DatagroupId} AND {t107325.UserId} = 150 AND {t107325.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107345)] as t107345 (d) ON ({t107315.WellId?}? = {t107345.WellId})
		)  ON ({t107345.SetpointtypeId} = {t107312.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107320.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107325.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
