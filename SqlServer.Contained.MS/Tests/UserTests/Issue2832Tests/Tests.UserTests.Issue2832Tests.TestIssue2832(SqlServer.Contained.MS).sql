(503375) SELECT 
	t503375.Id = t503374.Id
FROM [DctSetpointtype(503374)] as t503374 (spt)
		LEFT JOIN (
			[VWellTree(503377)] as t503377 (t2)
				INNER JOIN [DctOu(503379)] as t503379 (tp2) ON ({t503377.ShopId?}? = {t503379.Id})
				LEFT JOIN [UacUsersDatagroup(503382)] as t503382 (cudg) ON ({t503379.Id} = {t503382.DatagroupId} AND {t503382.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(503387)] as t503387 (oudg) ON ({t503379.ParentId?}? = {t503387.DatagroupId} AND {t503387.UserId} = 150 AND {t503387.Inheritablepermission} > 0)
				INNER JOIN [Deviation(503407)] as t503407 (d) ON ({t503377.WellId?}? = {t503407.WellId})
		)  ON ({t503407.SetpointtypeId} = {t503374.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t503382.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t503387.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
