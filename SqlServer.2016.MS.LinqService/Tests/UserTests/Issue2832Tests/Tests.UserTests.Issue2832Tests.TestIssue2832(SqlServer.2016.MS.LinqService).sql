(244471) SELECT 
	t244471.Id = t244470.Id
FROM [DctSetpointtype(244470)] as t244470 (spt)
		LEFT JOIN (
			[VWellTree(244473)] as t244473 (t2)
				INNER JOIN [DctOu(244475)] as t244475 (tp2) ON ({t244473.ShopId?}? = {t244475.Id})
				LEFT JOIN [UacUsersDatagroup(244478)] as t244478 (cudg) ON ({t244475.Id} = {t244478.DatagroupId} AND {t244478.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(244483)] as t244483 (oudg) ON ({t244475.ParentId?}? = {t244483.DatagroupId} AND {t244483.UserId} = 150 AND {t244483.Inheritablepermission} > 0)
				INNER JOIN [Deviation(244503)] as t244503 (d) ON ({t244473.WellId?}? = {t244503.WellId})
		)  ON ({t244503.SetpointtypeId} = {t244470.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t244478.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t244483.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
