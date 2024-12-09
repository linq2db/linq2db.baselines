(140838) SELECT 
	t140838.Id = t140837.Id
FROM [DctSetpointtype(140837)] as t140837 (spt)
		LEFT JOIN (
			[VWellTree(140840)] as t140840 (t2)
				INNER JOIN [DctOu(140842)] as t140842 (tp2) ON ({t140840.ShopId?}? = {t140842.Id})
				LEFT JOIN [UacUsersDatagroup(140845)] as t140845 (cudg) ON ({t140842.Id} = {t140845.DatagroupId} AND {t140845.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140850)] as t140850 (oudg) ON ({t140842.ParentId?}? = {t140850.DatagroupId} AND {t140850.UserId} = 150 AND {t140850.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140870)] as t140870 (d) ON ({t140840.WellId?}? = {t140870.WellId})
		)  ON ({t140870.SetpointtypeId} = {t140837.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140845.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140850.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
