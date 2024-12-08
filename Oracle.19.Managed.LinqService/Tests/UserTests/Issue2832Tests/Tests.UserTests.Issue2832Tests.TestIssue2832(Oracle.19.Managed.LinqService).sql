(140824) SELECT 
	t140824.Id = t140823.Id
FROM [DctSetpointtype(140823)] as t140823 (spt)
		LEFT JOIN (
			[VWellTree(140826)] as t140826 (t2)
				INNER JOIN [DctOu(140828)] as t140828 (tp2) ON ({t140826.ShopId?}? = {t140828.Id})
				LEFT JOIN [UacUsersDatagroup(140831)] as t140831 (cudg) ON ({t140828.Id} = {t140831.DatagroupId} AND {t140831.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140836)] as t140836 (oudg) ON ({t140828.ParentId?}? = {t140836.DatagroupId} AND {t140836.UserId} = 150 AND {t140836.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140856)] as t140856 (d) ON ({t140826.WellId?}? = {t140856.WellId})
		)  ON ({t140856.SetpointtypeId} = {t140823.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140831.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140836.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
