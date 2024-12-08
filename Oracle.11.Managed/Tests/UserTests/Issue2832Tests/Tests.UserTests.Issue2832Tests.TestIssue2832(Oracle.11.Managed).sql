(194983) SELECT 
	t194983.Id = t194982.Id
FROM [DctSetpointtype(194982)] as t194982 (spt)
		LEFT JOIN (
			[VWellTree(194985)] as t194985 (t2)
				INNER JOIN [DctOu(194987)] as t194987 (tp2) ON ({t194985.ShopId?}? = {t194987.Id})
				LEFT JOIN [UacUsersDatagroup(194990)] as t194990 (cudg) ON ({t194987.Id} = {t194990.DatagroupId} AND {t194990.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(194995)] as t194995 (oudg) ON ({t194987.ParentId?}? = {t194995.DatagroupId} AND {t194995.UserId} = 150 AND {t194995.Inheritablepermission} > 0)
				INNER JOIN [Deviation(195015)] as t195015 (d) ON ({t194985.WellId?}? = {t195015.WellId})
		)  ON ({t195015.SetpointtypeId} = {t194982.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t194990.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t194995.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
