(205848) SELECT 
	t205848.Id = t205847.Id
FROM [DctSetpointtype(205847)] as t205847 (spt)
		LEFT JOIN (
			[VWellTree(205850)] as t205850 (t2)
				INNER JOIN [DctOu(205852)] as t205852 (tp2) ON ({t205850.ShopId?}? = {t205852.Id})
				LEFT JOIN [UacUsersDatagroup(205855)] as t205855 (cudg) ON ({t205852.Id} = {t205855.DatagroupId} AND {t205855.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205860)] as t205860 (oudg) ON ({t205852.ParentId?}? = {t205860.DatagroupId} AND {t205860.UserId} = 150 AND {t205860.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205880)] as t205880 (d) ON ({t205850.WellId?}? = {t205880.WellId})
		)  ON ({t205880.SetpointtypeId} = {t205847.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205855.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205860.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
