(318402) SELECT 
	t318402.Id = t318401.Id
FROM [DctSetpointtype(318401)] as t318401 (spt)
		LEFT JOIN (
			[VWellTree(318404)] as t318404 (t2)
				INNER JOIN [DctOu(318406)] as t318406 (tp2) ON ({t318404.ShopId?}? = {t318406.Id})
				LEFT JOIN [UacUsersDatagroup(318409)] as t318409 (cudg) ON ({t318406.Id} = {t318409.DatagroupId} AND {t318409.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(318414)] as t318414 (oudg) ON ({t318406.ParentId?}? = {t318414.DatagroupId} AND {t318414.UserId} = 150 AND {t318414.Inheritablepermission} > 0)
				INNER JOIN [Deviation(318434)] as t318434 (d) ON ({t318404.WellId?}? = {t318434.WellId})
		)  ON ({t318434.SetpointtypeId} = {t318401.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t318409.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t318414.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
