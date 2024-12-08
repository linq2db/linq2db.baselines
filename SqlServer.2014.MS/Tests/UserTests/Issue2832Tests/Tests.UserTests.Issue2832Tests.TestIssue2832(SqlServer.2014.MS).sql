(240530) SELECT 
	t240530.Id = t240529.Id
FROM [DctSetpointtype(240529)] as t240529 (spt)
		LEFT JOIN (
			[VWellTree(240532)] as t240532 (t2)
				INNER JOIN [DctOu(240534)] as t240534 (tp2) ON ({t240532.ShopId?}? = {t240534.Id})
				LEFT JOIN [UacUsersDatagroup(240537)] as t240537 (cudg) ON ({t240534.Id} = {t240537.DatagroupId} AND {t240537.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240542)] as t240542 (oudg) ON ({t240534.ParentId?}? = {t240542.DatagroupId} AND {t240542.UserId} = 150 AND {t240542.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240562)] as t240562 (d) ON ({t240532.WellId?}? = {t240562.WellId})
		)  ON ({t240562.SetpointtypeId} = {t240529.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240537.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t240542.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
