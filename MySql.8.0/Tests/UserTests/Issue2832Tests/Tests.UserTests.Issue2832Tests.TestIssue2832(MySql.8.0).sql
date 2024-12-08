(205795) SELECT 
	t205795.Id = t205794.Id
FROM [DctSetpointtype(205794)] as t205794 (spt)
		LEFT JOIN (
			[VWellTree(205797)] as t205797 (t2)
				INNER JOIN [DctOu(205799)] as t205799 (tp2) ON ({t205797.ShopId?}? = {t205799.Id})
				LEFT JOIN [UacUsersDatagroup(205802)] as t205802 (cudg) ON ({t205799.Id} = {t205802.DatagroupId} AND {t205802.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205807)] as t205807 (oudg) ON ({t205799.ParentId?}? = {t205807.DatagroupId} AND {t205807.UserId} = 150 AND {t205807.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205827)] as t205827 (d) ON ({t205797.WellId?}? = {t205827.WellId})
		)  ON ({t205827.SetpointtypeId} = {t205794.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205802.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205807.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
