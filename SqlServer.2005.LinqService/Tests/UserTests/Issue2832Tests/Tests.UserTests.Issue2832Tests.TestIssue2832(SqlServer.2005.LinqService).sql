(218700) SELECT 
	t218700.Id = t218699.Id
FROM [DctSetpointtype(218699)] as t218699 (spt)
		LEFT JOIN (
			[VWellTree(218702)] as t218702 (t2)
				INNER JOIN [DctOu(218704)] as t218704 (tp2) ON ({t218702.ShopId?}? = {t218704.Id})
				LEFT JOIN [UacUsersDatagroup(218707)] as t218707 (cudg) ON ({t218704.Id} = {t218707.DatagroupId} AND {t218707.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(218712)] as t218712 (oudg) ON ({t218704.ParentId?}? = {t218712.DatagroupId} AND {t218712.UserId} = 150 AND {t218712.Inheritablepermission} > 0)
				INNER JOIN [Deviation(218732)] as t218732 (d) ON ({t218702.WellId?}? = {t218732.WellId})
		)  ON ({t218732.SetpointtypeId} = {t218699.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t218707.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t218712.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
