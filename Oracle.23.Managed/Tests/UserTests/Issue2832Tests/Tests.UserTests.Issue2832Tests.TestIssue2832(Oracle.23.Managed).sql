(140811) SELECT 
	t140811.Id = t140810.Id
FROM [DctSetpointtype(140810)] as t140810 (spt)
		LEFT JOIN (
			[VWellTree(140813)] as t140813 (t2)
				INNER JOIN [DctOu(140815)] as t140815 (tp2) ON ({t140813.ShopId?}? = {t140815.Id})
				LEFT JOIN [UacUsersDatagroup(140818)] as t140818 (cudg) ON ({t140815.Id} = {t140818.DatagroupId} AND {t140818.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140823)] as t140823 (oudg) ON ({t140815.ParentId?}? = {t140823.DatagroupId} AND {t140823.UserId} = 150 AND {t140823.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140843)] as t140843 (d) ON ({t140813.WellId?}? = {t140843.WellId})
		)  ON ({t140843.SetpointtypeId} = {t140810.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140818.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140823.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
