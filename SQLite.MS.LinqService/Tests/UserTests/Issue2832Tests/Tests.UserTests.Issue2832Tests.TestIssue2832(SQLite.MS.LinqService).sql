(703729) SELECT 
	t703729.Id = t703728.Id
FROM [DctSetpointtype(703728)] as t703728 (spt)
		LEFT JOIN (
			[VWellTree(703731)] as t703731 (t2)
				INNER JOIN [DctOu(703733)] as t703733 (tp2) ON ({t703731.ShopId?}? = {t703733.Id})
				LEFT JOIN [UacUsersDatagroup(703736)] as t703736 (cudg) ON ({t703733.Id} = {t703736.DatagroupId} AND {t703736.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(703741)] as t703741 (oudg) ON ({t703733.ParentId?}? = {t703741.DatagroupId} AND {t703741.UserId} = 150 AND {t703741.Inheritablepermission} > 0)
				INNER JOIN [Deviation(703761)] as t703761 (d) ON ({t703731.WellId?}? = {t703761.WellId})
		)  ON ({t703761.SetpointtypeId} = {t703728.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t703736.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t703741.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
