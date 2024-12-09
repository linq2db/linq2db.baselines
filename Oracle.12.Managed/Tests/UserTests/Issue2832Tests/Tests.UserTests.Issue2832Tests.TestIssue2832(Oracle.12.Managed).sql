(140799) SELECT 
	t140799.Id = t140798.Id
FROM [DctSetpointtype(140798)] as t140798 (spt)
		LEFT JOIN (
			[VWellTree(140801)] as t140801 (t2)
				INNER JOIN [DctOu(140803)] as t140803 (tp2) ON ({t140801.ShopId?}? = {t140803.Id})
				LEFT JOIN [UacUsersDatagroup(140806)] as t140806 (cudg) ON ({t140803.Id} = {t140806.DatagroupId} AND {t140806.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140811)] as t140811 (oudg) ON ({t140803.ParentId?}? = {t140811.DatagroupId} AND {t140811.UserId} = 150 AND {t140811.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140831)] as t140831 (d) ON ({t140801.WellId?}? = {t140831.WellId})
		)  ON ({t140831.SetpointtypeId} = {t140798.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140806.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140811.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
