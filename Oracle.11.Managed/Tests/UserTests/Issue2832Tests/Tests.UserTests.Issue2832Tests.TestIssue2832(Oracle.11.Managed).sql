(194124) SELECT 
	t194124.Id = t194123.Id
FROM [DctSetpointtype(194123)] as t194123 (spt)
		LEFT JOIN (
			[VWellTree(194126)] as t194126 (t2)
				INNER JOIN [DctOu(194128)] as t194128 (tp2) ON ({t194126.ShopId?}? = {t194128.Id})
				LEFT JOIN [UacUsersDatagroup(194131)] as t194131 (cudg) ON ({t194128.Id} = {t194131.DatagroupId} AND {t194131.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(194136)] as t194136 (oudg) ON ({t194128.ParentId?}? = {t194136.DatagroupId} AND {t194136.UserId} = 150 AND {t194136.Inheritablepermission} > 0)
				INNER JOIN [Deviation(194156)] as t194156 (d) ON ({t194126.WellId?}? = {t194156.WellId})
		)  ON ({t194156.SetpointtypeId} = {t194123.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t194131.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t194136.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
