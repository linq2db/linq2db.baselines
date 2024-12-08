(195022) SELECT 
	t195022.Id = t195021.Id
FROM [DctSetpointtype(195021)] as t195021 (spt)
		LEFT JOIN (
			[VWellTree(195024)] as t195024 (t2)
				INNER JOIN [DctOu(195026)] as t195026 (tp2) ON ({t195024.ShopId?}? = {t195026.Id})
				LEFT JOIN [UacUsersDatagroup(195029)] as t195029 (cudg) ON ({t195026.Id} = {t195029.DatagroupId} AND {t195029.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(195034)] as t195034 (oudg) ON ({t195026.ParentId?}? = {t195034.DatagroupId} AND {t195034.UserId} = 150 AND {t195034.Inheritablepermission} > 0)
				INNER JOIN [Deviation(195054)] as t195054 (d) ON ({t195024.WellId?}? = {t195054.WellId})
		)  ON ({t195054.SetpointtypeId} = {t195021.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t195029.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t195034.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
