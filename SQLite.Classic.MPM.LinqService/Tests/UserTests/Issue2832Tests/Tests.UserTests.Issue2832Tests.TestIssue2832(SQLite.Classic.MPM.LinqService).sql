(426271) SELECT 
	t426271.Id = t426270.Id
FROM [DctSetpointtype(426270)] as t426270 (spt)
		LEFT JOIN (
			[VWellTree(426273)] as t426273 (t2)
				INNER JOIN [DctOu(426275)] as t426275 (tp2) ON ({t426273.ShopId?}? = {t426275.Id})
				LEFT JOIN [UacUsersDatagroup(426278)] as t426278 (cudg) ON ({t426275.Id} = {t426278.DatagroupId} AND {t426278.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426283)] as t426283 (oudg) ON ({t426275.ParentId?}? = {t426283.DatagroupId} AND {t426283.UserId} = 150 AND {t426283.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426303)] as t426303 (d) ON ({t426273.WellId?}? = {t426303.WellId})
		)  ON ({t426303.SetpointtypeId} = {t426270.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426278.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426283.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
