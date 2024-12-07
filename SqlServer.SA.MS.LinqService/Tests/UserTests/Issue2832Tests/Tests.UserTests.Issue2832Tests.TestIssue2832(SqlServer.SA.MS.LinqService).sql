(499334) SELECT 
	t499334.Id = t499333.Id
FROM [DctSetpointtype(499333)] as t499333 (spt)
		LEFT JOIN (
			[VWellTree(499336)] as t499336 (t2)
				INNER JOIN [DctOu(499338)] as t499338 (tp2) ON ({t499336.ShopId?}? = {t499338.Id})
				LEFT JOIN [UacUsersDatagroup(499341)] as t499341 (cudg) ON ({t499338.Id} = {t499341.DatagroupId} AND {t499341.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(499346)] as t499346 (oudg) ON ({t499338.ParentId?}? = {t499346.DatagroupId} AND {t499346.UserId} = 150 AND {t499346.Inheritablepermission} > 0)
				INNER JOIN [Deviation(499366)] as t499366 (d) ON ({t499336.WellId?}? = {t499366.WellId})
		)  ON ({t499366.SetpointtypeId} = {t499333.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t499341.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t499346.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
