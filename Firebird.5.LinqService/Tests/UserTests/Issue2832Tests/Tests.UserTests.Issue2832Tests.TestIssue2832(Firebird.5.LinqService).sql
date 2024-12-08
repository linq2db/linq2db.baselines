(102991) SELECT 
	t102991.Id = t102990.Id
FROM [DctSetpointtype(102990)] as t102990 (spt)
		LEFT JOIN (
			[VWellTree(102993)] as t102993 (t2)
				INNER JOIN [DctOu(102995)] as t102995 (tp2) ON ({t102993.ShopId?}? = {t102995.Id})
				LEFT JOIN [UacUsersDatagroup(102998)] as t102998 (cudg) ON ({t102995.Id} = {t102998.DatagroupId} AND {t102998.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(103003)] as t103003 (oudg) ON ({t102995.ParentId?}? = {t103003.DatagroupId} AND {t103003.UserId} = 150 AND {t103003.Inheritablepermission} > 0)
				INNER JOIN [Deviation(103023)] as t103023 (d) ON ({t102993.WellId?}? = {t103023.WellId})
		)  ON ({t103023.SetpointtypeId} = {t102990.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t102998.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t103003.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
