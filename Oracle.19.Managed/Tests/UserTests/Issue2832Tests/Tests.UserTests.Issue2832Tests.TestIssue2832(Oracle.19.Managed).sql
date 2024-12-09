(140841) SELECT 
	t140841.Id = t140840.Id
FROM [DctSetpointtype(140840)] as t140840 (spt)
		LEFT JOIN (
			[VWellTree(140843)] as t140843 (t2)
				INNER JOIN [DctOu(140845)] as t140845 (tp2) ON ({t140843.ShopId?}? = {t140845.Id})
				LEFT JOIN [UacUsersDatagroup(140848)] as t140848 (cudg) ON ({t140845.Id} = {t140848.DatagroupId} AND {t140848.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140853)] as t140853 (oudg) ON ({t140845.ParentId?}? = {t140853.DatagroupId} AND {t140853.UserId} = 150 AND {t140853.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140873)] as t140873 (d) ON ({t140843.WellId?}? = {t140873.WellId})
		)  ON ({t140873.SetpointtypeId} = {t140840.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140848.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140853.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
