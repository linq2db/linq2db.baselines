(491297) SELECT 
	t491297.Id = t491296.Id
FROM [DctSetpointtype(491296)] as t491296 (spt)
		LEFT JOIN (
			[VWellTree(491299)] as t491299 (t2)
				INNER JOIN [DctOu(491301)] as t491301 (tp2) ON ({t491299.ShopId?}? = {t491301.Id})
				LEFT JOIN [UacUsersDatagroup(491304)] as t491304 (cudg) ON ({t491301.Id} = {t491304.DatagroupId} AND {t491304.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491309)] as t491309 (oudg) ON ({t491301.ParentId?}? = {t491309.DatagroupId} AND {t491309.UserId} = 150 AND {t491309.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491329)] as t491329 (d) ON ({t491299.WellId?}? = {t491329.WellId})
		)  ON ({t491329.SetpointtypeId} = {t491296.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491304.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t491309.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
