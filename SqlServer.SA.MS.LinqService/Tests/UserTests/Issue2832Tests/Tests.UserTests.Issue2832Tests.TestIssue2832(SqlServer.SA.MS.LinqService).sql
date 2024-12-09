(491496) SELECT 
	t491496.Id = t491495.Id
FROM [DctSetpointtype(491495)] as t491495 (spt)
		LEFT JOIN (
			[VWellTree(491498)] as t491498 (t2)
				INNER JOIN [DctOu(491500)] as t491500 (tp2) ON ({t491498.ShopId?}? = {t491500.Id})
				LEFT JOIN [UacUsersDatagroup(491503)] as t491503 (cudg) ON ({t491500.Id} = {t491503.DatagroupId} AND {t491503.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(491508)] as t491508 (oudg) ON ({t491500.ParentId?}? = {t491508.DatagroupId} AND {t491508.UserId} = 150 AND {t491508.Inheritablepermission} > 0)
				INNER JOIN [Deviation(491528)] as t491528 (d) ON ({t491498.WellId?}? = {t491528.WellId})
		)  ON ({t491528.SetpointtypeId} = {t491495.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t491503.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t491508.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
