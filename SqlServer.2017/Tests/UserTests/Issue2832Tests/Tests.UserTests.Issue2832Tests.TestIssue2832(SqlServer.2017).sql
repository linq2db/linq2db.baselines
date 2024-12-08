(245530) SELECT 
	t245530.Id = t245529.Id
FROM [DctSetpointtype(245529)] as t245529 (spt)
		LEFT JOIN (
			[VWellTree(245532)] as t245532 (t2)
				INNER JOIN [DctOu(245534)] as t245534 (tp2) ON ({t245532.ShopId?}? = {t245534.Id})
				LEFT JOIN [UacUsersDatagroup(245537)] as t245537 (cudg) ON ({t245534.Id} = {t245537.DatagroupId} AND {t245537.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245542)] as t245542 (oudg) ON ({t245534.ParentId?}? = {t245542.DatagroupId} AND {t245542.UserId} = 150 AND {t245542.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245562)] as t245562 (d) ON ({t245532.WellId?}? = {t245562.WellId})
		)  ON ({t245562.SetpointtypeId} = {t245529.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245537.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245542.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
