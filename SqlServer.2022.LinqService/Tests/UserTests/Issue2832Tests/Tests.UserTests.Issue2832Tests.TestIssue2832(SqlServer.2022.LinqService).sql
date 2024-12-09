(245767) SELECT 
	t245767.Id = t245766.Id
FROM [DctSetpointtype(245766)] as t245766 (spt)
		LEFT JOIN (
			[VWellTree(245769)] as t245769 (t2)
				INNER JOIN [DctOu(245771)] as t245771 (tp2) ON ({t245769.ShopId?}? = {t245771.Id})
				LEFT JOIN [UacUsersDatagroup(245774)] as t245774 (cudg) ON ({t245771.Id} = {t245774.DatagroupId} AND {t245774.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245779)] as t245779 (oudg) ON ({t245771.ParentId?}? = {t245779.DatagroupId} AND {t245779.UserId} = 150 AND {t245779.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245799)] as t245799 (d) ON ({t245769.WellId?}? = {t245799.WellId})
		)  ON ({t245799.SetpointtypeId} = {t245766.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245774.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245779.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
