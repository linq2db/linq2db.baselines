(102993) SELECT 
	t102993.Id = t102992.Id
FROM [DctSetpointtype(102992)] as t102992 (spt)
		LEFT JOIN (
			[VWellTree(102995)] as t102995 (t2)
				INNER JOIN [DctOu(102997)] as t102997 (tp2) ON ({t102995.ShopId?}? = {t102997.Id})
				LEFT JOIN [UacUsersDatagroup(103000)] as t103000 (cudg) ON ({t102997.Id} = {t103000.DatagroupId} AND {t103000.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(103005)] as t103005 (oudg) ON ({t102997.ParentId?}? = {t103005.DatagroupId} AND {t103005.UserId} = 150 AND {t103005.Inheritablepermission} > 0)
				INNER JOIN [Deviation(103025)] as t103025 (d) ON ({t102995.WellId?}? = {t103025.WellId})
		)  ON ({t103025.SetpointtypeId} = {t102992.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t103000.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t103005.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
