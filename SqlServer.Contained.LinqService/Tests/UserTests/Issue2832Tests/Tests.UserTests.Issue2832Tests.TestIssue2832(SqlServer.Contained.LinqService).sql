(499377) SELECT 
	t499377.Id = t499376.Id
FROM [DctSetpointtype(499376)] as t499376 (spt)
		LEFT JOIN (
			[VWellTree(499379)] as t499379 (t2)
				INNER JOIN [DctOu(499381)] as t499381 (tp2) ON ({t499379.ShopId?}? = {t499381.Id})
				LEFT JOIN [UacUsersDatagroup(499384)] as t499384 (cudg) ON ({t499381.Id} = {t499384.DatagroupId} AND {t499384.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(499389)] as t499389 (oudg) ON ({t499381.ParentId?}? = {t499389.DatagroupId} AND {t499389.UserId} = 150 AND {t499389.Inheritablepermission} > 0)
				INNER JOIN [Deviation(499409)] as t499409 (d) ON ({t499379.WellId?}? = {t499409.WellId})
		)  ON ({t499409.SetpointtypeId} = {t499376.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t499384.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t499389.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
