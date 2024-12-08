(107352) SELECT 
	t107352.Id = t107351.Id
FROM [DctSetpointtype(107351)] as t107351 (spt)
		LEFT JOIN (
			[VWellTree(107354)] as t107354 (t2)
				INNER JOIN [DctOu(107356)] as t107356 (tp2) ON ({t107354.ShopId?}? = {t107356.Id})
				LEFT JOIN [UacUsersDatagroup(107359)] as t107359 (cudg) ON ({t107356.Id} = {t107359.DatagroupId} AND {t107359.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107364)] as t107364 (oudg) ON ({t107356.ParentId?}? = {t107364.DatagroupId} AND {t107364.UserId} = 150 AND {t107364.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107384)] as t107384 (d) ON ({t107354.WellId?}? = {t107384.WellId})
		)  ON ({t107384.SetpointtypeId} = {t107351.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107359.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107364.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
