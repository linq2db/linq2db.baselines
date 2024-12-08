(503297) SELECT 
	t503297.Id = t503296.Id
FROM [DctSetpointtype(503296)] as t503296 (spt)
		LEFT JOIN (
			[VWellTree(503299)] as t503299 (t2)
				INNER JOIN [DctOu(503301)] as t503301 (tp2) ON ({t503299.ShopId?}? = {t503301.Id})
				LEFT JOIN [UacUsersDatagroup(503304)] as t503304 (cudg) ON ({t503301.Id} = {t503304.DatagroupId} AND {t503304.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(503309)] as t503309 (oudg) ON ({t503301.ParentId?}? = {t503309.DatagroupId} AND {t503309.UserId} = 150 AND {t503309.Inheritablepermission} > 0)
				INNER JOIN [Deviation(503329)] as t503329 (d) ON ({t503299.WellId?}? = {t503329.WellId})
		)  ON ({t503329.SetpointtypeId} = {t503296.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t503304.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t503309.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
