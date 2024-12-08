(245534) SELECT 
	t245534.Id = t245533.Id
FROM [DctSetpointtype(245533)] as t245533 (spt)
		LEFT JOIN (
			[VWellTree(245536)] as t245536 (t2)
				INNER JOIN [DctOu(245538)] as t245538 (tp2) ON ({t245536.ShopId?}? = {t245538.Id})
				LEFT JOIN [UacUsersDatagroup(245541)] as t245541 (cudg) ON ({t245538.Id} = {t245541.DatagroupId} AND {t245541.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245546)] as t245546 (oudg) ON ({t245538.ParentId?}? = {t245546.DatagroupId} AND {t245546.UserId} = 150 AND {t245546.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245566)] as t245566 (d) ON ({t245536.WellId?}? = {t245566.WellId})
		)  ON ({t245566.SetpointtypeId} = {t245533.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245541.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245546.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
