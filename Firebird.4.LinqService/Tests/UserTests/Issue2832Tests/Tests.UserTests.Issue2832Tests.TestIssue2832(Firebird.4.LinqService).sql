(102983) SELECT 
	t102983.Id = t102982.Id
FROM [DctSetpointtype(102982)] as t102982 (spt)
		LEFT JOIN (
			[VWellTree(102985)] as t102985 (t2)
				INNER JOIN [DctOu(102987)] as t102987 (tp2) ON ({t102985.ShopId?}? = {t102987.Id})
				LEFT JOIN [UacUsersDatagroup(102990)] as t102990 (cudg) ON ({t102987.Id} = {t102990.DatagroupId} AND {t102990.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(102995)] as t102995 (oudg) ON ({t102987.ParentId?}? = {t102995.DatagroupId} AND {t102995.UserId} = 150 AND {t102995.Inheritablepermission} > 0)
				INNER JOIN [Deviation(103015)] as t103015 (d) ON ({t102985.WellId?}? = {t103015.WellId})
		)  ON ({t103015.SetpointtypeId} = {t102982.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t102990.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t102995.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
