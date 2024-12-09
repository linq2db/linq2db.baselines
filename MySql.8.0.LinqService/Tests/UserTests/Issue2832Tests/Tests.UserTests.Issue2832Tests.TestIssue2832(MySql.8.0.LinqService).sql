(205853) SELECT 
	t205853.Id = t205852.Id
FROM [DctSetpointtype(205852)] as t205852 (spt)
		LEFT JOIN (
			[VWellTree(205855)] as t205855 (t2)
				INNER JOIN [DctOu(205857)] as t205857 (tp2) ON ({t205855.ShopId?}? = {t205857.Id})
				LEFT JOIN [UacUsersDatagroup(205860)] as t205860 (cudg) ON ({t205857.Id} = {t205860.DatagroupId} AND {t205860.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205865)] as t205865 (oudg) ON ({t205857.ParentId?}? = {t205865.DatagroupId} AND {t205865.UserId} = 150 AND {t205865.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205885)] as t205885 (d) ON ({t205855.WellId?}? = {t205885.WellId})
		)  ON ({t205885.SetpointtypeId} = {t205852.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205860.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205865.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
