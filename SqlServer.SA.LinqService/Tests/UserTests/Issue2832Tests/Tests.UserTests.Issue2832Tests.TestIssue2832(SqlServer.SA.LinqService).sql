(499291) SELECT 
	t499291.Id = t499290.Id
FROM [DctSetpointtype(499290)] as t499290 (spt)
		LEFT JOIN (
			[VWellTree(499293)] as t499293 (t2)
				INNER JOIN [DctOu(499295)] as t499295 (tp2) ON ({t499293.ShopId?}? = {t499295.Id})
				LEFT JOIN [UacUsersDatagroup(499298)] as t499298 (cudg) ON ({t499295.Id} = {t499298.DatagroupId} AND {t499298.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(499303)] as t499303 (oudg) ON ({t499295.ParentId?}? = {t499303.DatagroupId} AND {t499303.UserId} = 150 AND {t499303.Inheritablepermission} > 0)
				INNER JOIN [Deviation(499323)] as t499323 (d) ON ({t499293.WellId?}? = {t499323.WellId})
		)  ON ({t499323.SetpointtypeId} = {t499290.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t499298.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t499303.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
