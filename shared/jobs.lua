---@diagnostic disable: missing-fields
---Job names must be lower case (top level table key)
---@type table<string, Job>
return {
    ['unemployed'] = {
		label = 'Unemployed',
        type = 'none',
        societyPay = false,
		grades = {
            [0] = {
                name = 'Freelancer',
            },
            [1] = {
                name = 'Welfare',
            },
			[2] = {
                name = 'Disability',
            },
        },
	},
    ['illuminati'] = {
		label = 'The Illuminati',
		type = 'organization',
        societyPay = false,
        basePay = 0,
		grades = {
            [0] = {
                name = 'Initiate',
            },
            [1] = {
                name = 'Illuminated I',
            },
			[2] = {
                name = 'Illuminated II',
            },
            [3] = {
                name = 'Illuminated III',
            },
            [4] = {
                name = 'Illuminated IV',
            },
			[5] = {
                name = 'Illuminated V',
            },
            [6] = {
                name = 'Illuminated VI',
            },
            [7] = {
                name = 'Chosen',
                ismanager = true,
            },
			[8] = {
                name = 'Grandmaster',
				isboss = true,
            },
        },
	},
	['cityhall'] = {
		label = 'L.S. City Hall',
        type = 'government',
        societyPay = true,
        basePay = 1000,
        licensed = true,
		grades = {
            [0] = {
                name = 'City Worker',
            },
            [1] = {
                name = 'City Manager',
            },
			[2] = {
                name = 'Council Member',
            },
            [3] = {
                name = 'Deputy Mayor',
				ismanager = true,
            },
			[4] = {
                name = 'Mayor',
				isboss = true,
            },
        },
	},
    ['tour'] = {
		label = 'L.S. Tour Guide',
        type = 'government',
        societyPay = true,
        basePay = 900,
        licensed = true,
		grades = {
			[0] = {
                name = 'Tour Guide',
            },
			[1] = {
                name = 'Tour Director',
				isboss = true,
            },
        },
	},
    ['police'] = {
        label = 'L.S. Police Department',
        type = 'leo',
        societyPay = true,
        basePay = 900,
        licensed = true,
        grades = {
            [0] = {
                name = 'Cadet',
            },
            [1] = {
                name = 'Officer',
            },
            [2] = {
                name = 'Senior Officer',
            },
            [3] = {
                name = 'Corporal',
            },
            [4] = {
                name = 'Sergeant',
            },
            [5] = {
                name = 'Lieutenant',
            },
            [6] = {
                name = 'Captain',
				ismanager = true,
            },
            [7] = {
                name = 'Commander',
				ismanager = true,
            },
            [8] = {
                name = 'Deputy Chief',
				ismanager = true,
            },
            [9] = {
                name = 'Assistant Chief',
				ismanager = true,
            },
            [10] = {
                name = 'Chief of Police',
                isboss = true,
            },
        },
    },
    ['sheriff'] = {
        label = 'B.C. Sheriff\'s Office',
        type = 'leo',
        societyPay = true,
        basePay = 900,
        licensed = true,
        grades = {
            [0] = {
                name = 'Cadet',
            },
            [1] = {
                name = 'Deputy',
            },
            [2] = {
                name = 'Senior Deputy',
            },
            [3] = {
                name = 'Corporal',
            },
            [4] = {
                name = 'Sergeant',
            },
            [5] = {
                name = 'Lieutenant',
            },
            [6] = {
                name = 'Captain',
				ismanager = true,
            },
            [7] = {
                name = 'Commander',
				ismanager = true,
            },
            [8] = {
                name = 'Assistant Sheriff',
				ismanager = true,
            },
            [9] = {
                name = 'Undersheriff',
				ismanager = true,
            },
            [10] = {
                name = 'Sheriff',
                isboss = true,
            },
        },
    },
    ['state'] = {
        label = 'S.A. State Troopers',
        type = 'leo',
        societyPay = true,
        basePay = 900,
        licensed = true,
        grades = {
            [0] = {
                name = 'Cadet',
            },
            [1] = {
                name = 'Trooper',
            },
            [2] = {
                name = 'Senior Trooper',
            },
            [3] = {
                name = 'Corporal',
            },
            [4] = {
                name = 'Sergeant',
            },
            [5] = {
                name = 'Lieutenant',
            },
            [6] = {
                name = 'Captain',
                ismanager = true,
            },
            [7] = {
                name = 'Commander',
                ismanager = true,
            },
            [8] = {
                name = 'Major',
				ismanager = true,
            },
            [9] = {
                name = 'Lieutenant Colonel',
				ismanager = true,
            },
            [10] = {
                name = 'Colonel',
                isboss = true
            },
        },
    },
    ['prison'] = {
        label = 'Bolingbroke State Prison',
        type = 'leo',
        societyPay = true,
        basePay = 900,
        licensed = true,
        grades = {
            [0] = {
                name = 'Cadet',
            },
            [1] = {
                name = 'Officer',
            },
            [2] = {
                name = 'Corporal',
            },
            [3] = {
                name = 'Sergeant',
            },
            [4] = {
                name = 'Lieutenant',
            },
            [5] = {
                name = 'Captain',
                ismanager = true,
            },
            [6] = {
                name = 'Sheriff Command',
                ismanager = true,
            },
            [7] = {
                name = 'Deputy Warden',
                ismanager = true,
            },
            [8] = {
                name = 'Warden',
                isboss = true,
            },
            [9] = {
                name = 'Sheriff High Command',
                isboss = true,
            },
        },
    },
    ['prison-cook'] = {
        label = 'Boiling Brook State Prison Cafeteria',
        type = 'prison',
        societyPay = true,
        basePay = 100,
        licensed = true,
        grades = {
            [0] = {
                name = 'Trustee',
            },
            [1] = {
                name = 'Cook',
            },
            [2] = {
                name = 'Kitchen Manager',
                ismanager = true,
            },
            [3] = {
                name = 'Boss',
                isboss = true,
            },
        },
    },
	['fib'] = {
        label = 'FIB',
        type = 'federal',
        societyPay = true,
        basePay = 1250,
        licensed = true,
        grades = {
            [0] = {
                name = 'Agent Trainee',
            },
            [1] = {
                name = 'Special Agent',
            },
            [2] = {
                name = 'Senior Special Agent',
            },
            [3] = {
                name = 'Supervisory Special Agent',
            },
            [4] = {
                name = 'Assistant Special Agent in Charge',
            },
            [5] = {
                name = 'Special Agent In Charge',
				ismanager = true,
            },
            [6] = {
                name = 'Deputy Director',
				ismanager = true,
            },
			[7] = {
                name = 'Director',
                isboss = true,
            },
        },
    },
    ['cia'] = {
        label = 'Carrington Institute of Arts',
        type = 'federal',
        societyPay = true,
        basePay = 1250,
        licensed = true,
        grades = {
            [0] = {
                name = 'Apprentice',
            },
            [1] = {
                name = 'Appraiser',
            },
            [2] = {
                ismanager = true,
                name = 'Accountant',
            },
            [3] = {
                isboss = true,
                name = 'President',
            },
        },
    },
    ['internalaffairs'] = {
        label = 'Internal Affairs Group',
        type = 'federal',
        societyPay = true,
        basePay = 1250,
        licensed = true,
        grades = {
            [0] = {
                name = 'Agent Trainee',
            },
            [1] = {
                name = 'Special Agent',
            },
            [2] = {
                name = 'Senior Special Agent',
            },
            [3] = {
                name = 'Supervisory Special Agent',
            },
            [4] = {
                name = 'Assistant Special Agent in Charge',
            },
            [5] = {
                name = 'Special Agent in Charge',
                ismanager = true,
            },
            [6] = {
                name = 'Deputy Director',
                ismanager = true,
            },
            [7] = {
                name = 'Director',
                isboss = true,
            },
        },
    },
    ['marshal'] = {
        label = 'US Marshals Service',
        type = 'federal',
        societyPay = true,
        basePay = 1250,
        licensed = true,
        grades = {
            [0] = {
                name = 'Agent Trainee',
            },
            [1] = {
                name = 'Special Agent',
            },
            [2] = {
                name = 'Senior Special Agent',
            },
            [3] = {
                name = 'Team Lead',
            },
            [4] = {
                name = 'Deputy Director',
                ismanager = true,
            },
            [5] = {
                name = 'Director',
                isboss = true,
            },
        },
    },
    ['coastguard'] = {
        label = 'U.S. Coast Guard',
        type = 'federal',
        societyPay = true,
        basePay = 950,
        licensed = true,
        grades = {
            [0] = {
                name = 'Seaman Recruit',
            },
            [1] = {
                name = 'Seaman',
            },
            [2] = {
                name = 'Petty Officer',
            },
            [3] = {
                name = 'Chief Petty Officer',
            },
            [4] = {
                name = 'Master Chief',
            },
            [5] = {
                name = 'Ensign',
            },
            [6] = {
                name = 'Lieutenant',
            },
			[7] = {
                name = 'Commander',
                ismanager = true,
            },
            [8] = {
                name = 'Captain',
                ismanager = true,
            },
            [9] = {
                name = 'Vice Admiral',
                ismanager = true,
            },
            [10] = {
                name = 'Admiral',
                isboss = true,
            },
        },
    },
    ['wildlife'] = {
        label = 'U.S. Fish & Wildlife',
        type = 'federal',
        societyPay = true,
        basePay = 1050,
        licensed = true,
        grades = {
            [0] = {
                name = 'Cadet',
            },
            [1] = {
                name = 'Ranger',
            },
            [2] = {
                name = 'Supervisor',
            },
            [3] = {
                name = 'Superintendent I',
            },
			[4] = {
                name = 'Superintendent II',
            },
            [5] = {
                name = 'Superintendent III',
            },
            [6] = {
                name = 'Division Chief',
                ismanager = true,
            },
            [7] = {
                name = 'Deputy Director',
                ismanager = true,
            },
            [8] = {
                name = 'Chief Deputy Director',
                ismanager = true,
            },
            [9] = {
                name = 'Director',
                isboss = true,
            }
        },
    },
    ['ambulance'] = {
        label = 'L.S. Medical Services',
        type = 'ems',
        societyPay = true,
        basePay = 950,
        licensed = true,
        grades = {
            [0] = {
                name = 'Resident',
            },
            [1] = {
                name = 'EMT',
            },
            [2] = {
                name = 'Paramedic',
            },
            [3] = {
                name = 'Nurse',
            },
            [4] = {
                name = 'Doctor',
            },
            [5] = {
                name = 'Surgeon',
            },
            [6] = {
                name = 'Department Head',
            },
            [7] = {
                name = 'Chief of Staff',
                ismanager = true
            },
            [8] = {
                name = 'Deputy Chief',
                ismanager = true
            },
            [9] = {
                name = 'Chief',
                isboss = true,
            },
            [10] = {
                name = 'Director',
                isboss = true,
            },
        },
    },

    ['pillboxmedical'] = {
        label = 'Pillbox Medical Services',
        type = 'ems',
        societyPay = true,
        basePay = 900,
        licensed = true,
        grades = {
            [0] = {
                name = 'EMT',
            },
            [1] = {
                name = 'Advanced EMT',
            },
            [2] = {
                name = 'Paramedic',
            },
            [3] = {
                name = 'Nurse',
            },
            [4] = {
                name = 'Doctor',
            },
            [5] = {
                name = 'Surgeon',
            },
            [6] = {
                name = 'Department Head',
            },
            [7] = {
                name = 'Administrator',
                ismanager = true
            },
            [8] = {
                name = 'Chief of Medicine',
                ismanager = true
            },
            [9] = {
                name = 'President',
                isboss = true,
            },
            [10] = {
                name = 'Director',
                isboss = true,
            },
        },
    },
    ['sandymedical'] = {
        label = 'Sandy Medical Services',
        type = 'ems',
        societyPay = true,
        basePay = 900,
        licensed = true,
        grades = {
            [0] = {
                name = 'EMT',
            },
            [1] = {
                name = 'Advanced EMT',
            },
            [2] = {
                name = 'Paramedic',
            },
            [3] = {
                name = 'Nurse',
            },
            [4] = {
                name = 'Doctor',
            },
            [5] = {
                name = 'Surgeon',
            },
            [6] = {
                name = 'Department Head',
            },
            [7] = {
                name = 'Administrator',
                ismanager = true
            },
            [8] = {
                name = 'Chief of Medicine',
                ismanager = true
            },
            [9] = {
                name = 'President',
                isboss = true,
            },
            [10] = {
                name = 'Director',
                isboss = true,
            },
        },
    },
    ['paletomedical'] = {
        label = 'Paleto Medical Services',
        type = 'ems',
        societyPay = true,
        basePay = 900,
        licensed = true,
        grades = {
            [0] = {
                name = 'EMT',
            },
            [1] = {
                name = 'Advanced EMT',
            },
            [2] = {
                name = 'Paramedic',
            },
            [3] = {
                name = 'Nurse',
            },
            [4] = {
                name = 'Doctor',
            },
            [5] = {
                name = 'Surgeon',
            },
            [6] = {
                name = 'Department Head',
            },
            [7] = {
                name = 'Administrator',
                ismanager = true
            },
            [8] = {
                name = 'Chief of Medicine',
                ismanager = true
            },
            [9] = {
                name = 'President',
                isboss = true,
            },
            [10] = {
                name = 'Director',
                isboss = true,
            },
        },
    },
    ['pharmacy'] = {
        label = 'Big Pharma',
        type = 'broker',
        societyPay = true,
        basePay = 500,
        licensed = false,
        grades = {
            [0] = {
                name = 'Front Desk',
            },
            [1] = {
                name = 'Technician',
            },
            [2] = {
                name = 'Pharmacist',
            },
            [3] = {
                name = 'Administrator',
				ismanager = true,
            },
            [4] = {
                name = 'Director',
                isboss = true,
            },
        },
    },
    ['fire'] = {
		label = 'L.S. Fire Department',
        type = 'ems',
        societyPay = true,
        basePay = 950,
        licensed = true,
		grades = {
            [0] = {
                name = 'Probationary',
            },
			[1] = {
                name = 'Volunteer',
            },
			[2] = {
                name = 'Firefighter',
            },
			[3] = {
                name = 'Senior Firefighter',
            },
            [4] = {
                name = 'Supervisor',
            },
			[5] = {
                name = 'Lieutenant',
            },
			[6] = {
                name = 'Captain',
            },
            [7] = {
                name = 'Battalion Chief',
                ismanager = true
            },
			[8] = {
                name = 'Deputy Chief',
				ismanager = true,
            },
			[9] = {
                name = 'Chief',
				isboss = true,
            },
            [10] = {
                name = 'Director',
				isboss = true,
            },
        },
    },
    ['dispatch'] = {
        label = 'L.S. Dispatch',
        type = 'leo',
        societyPay = true,
        basePay = 950,
        licensed = true,
        grades = {
            [0] = {
                name = 'Dispatch Trainee',
            },
            [1] = {
                name = 'Dispatcher',
            },
            [2] = {
                name = 'Dispatch Supervisor',
                ismanager = true,
            },
            [3] = {
                name = 'Dispatch Lead',
                isboss = true,
            },
        },
    },
    ['judge'] = {
		label = 'S.A. Department of Justice',
        type = 'doj',
        societyPay = true,
        basePay = 1350,
        licensed = true,
		grades = {
            [0] = {
                name = 'Court Clerk',
            },
            [1] = {
                name = 'Circuit Judge',
            },
            [2] = {
                name = 'District Judge',
                ismanager = true,
            },
            [3] = {
                name = 'Supreme Judge',
				ismanager = true,
            },
            [4] = {
                name = 'Chief Judge',
                isboss = true,
            },
        },
	},
    ['districtattorney'] = {
		label = 'S.A. District Attorney\'s Office',
        type = 'doj',
        societyPay = true,
        basePay = 1150,
        licensed = true,
		grades = {
            [0] = {
                name = 'Staff',
            },
            [1] = {
                name = 'Intern',
            },
            [2] = {
                name = 'Paralegal',
            },
            [3] = {
                name = 'Prosecutor',
            },
            [4] = {
                name = 'Assistant District Attorney',
                ismanager = true
            },
            [5] = {
                name = 'District Attorney',
                ismanager = true,
            },
            [6] = {
                name = 'Attorney General',
                isboss = true,
            },
        },
	},
	['lawyer'] = {
		label = 'S.A. Public Defender\'s Office',
        type = 'doj',
        societyPay = true,
        basePay = 1000,
        licensed = true,
		grades = {
            [0] = {
                name = 'Intern',
            },
            [1] = {
                name = 'Paralegal',
            },
            [2] = {
                name = 'Public Defender',
            },
            [3] = {
                name = 'Senior Public Defender',
            },
            [4] = {
                ismanager = true,
                name = 'Chief Public Defender',
            },
            [5] = {--TEMP REMOVE WITH DA OFFICE
                ismanager = true,
                name = 'Assistant District Attorney II',
            },
            [6] = {
                name = 'District Attorney',
                isboss = true,
            },
        },
	},
    ['lawfirm'] = {
		label = 'Ghost Law & Partners',
        type = 'lawfirm',
        societyPay = true,
        basePay = 900,
		grades = {
            [0] = {
                name = 'Front Desk',
            },
            [1] = {
                name = 'Law Clerk',
            },
            [2] = {
                name = 'Investigator',
            },
            [3] = {
                name = 'Paralegal',
            },
            [4] = {
                name = 'Intern',
            },
            [5] = {
                name = 'Attorney',
            },
            [6] = {
                name = 'Senior Attorney',
                ismanager = true,
            },
            [7] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
    ['lawfirm2'] = {
		label = 'Cornerstone Law',
        type = 'lawfirm',
        societyPay = true,
        basePay = 900,
		grades = {
            [0] = {
                name = 'Security',
            },
            [1] = {
                name = 'Security Head',
            },
            [2] = {
                name = 'Paralegal',
            },
            [3] = {
                name = 'Lawyer',
            },
            [4] = {
                name = 'Junior Partner',
            },
            [5] = {
                name = 'Partner',
            },
            [6] = {
                name = 'Managing Partner',
                ismanager = true,
            },
            [7] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
	['reporter'] = {
		label = 'Weazel News',
        type = 'news',
        societyPay = true,
        basePay = 800,
		grades = {
            [0] = {
                name = 'Intern',
            },
            [1] = {
                name = 'Security',
            },
            [2] = {
                name = 'Reception',
            },
			[3] = {
                name = 'Jr. Journalist',
            },
            [4] = {
                name = 'Journalist',
            },
            [5] = {
                name = 'Sr. Journalist',
            },
            [6] = {
                name = 'Editor',
            },
			[7] = {
                name = 'Creative Director',
				ismanager = true,
            },
            [8] = {
                name = 'CEO',
				isboss = true,
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
        type = 'realestate',
        societyPay = true,
        basePay = 850,
		grades = {
            [0] = {
                name = 'Security',
            },
			[1] = {
                name = 'House Sales',
            },
			[2] = {
                name = 'Business Sales',
            },
			[3] = {
                name = 'Manager',
                ismanager = true,
            },
			[4] = {
                name = 'CEO',
				isboss = true,
            },
        },
	},
    -- ['shutendoji'] = {
	-- 	label = 'Shuten doji Ink',
    --     type = 'tattoo',
    --     societyPay = true,
    --     basePay = 500,
	-- 	grades = {
    --         [0] = {
    --             name = 'Receptionist',
    --         },
	-- 		[1] = {
    --             name = 'Apprentice',
    --         },
	-- 		[2] = {
    --             name = 'Tattooist',
    --         },
	-- 		[3] = {
    --             name = 'Manager',
	-- 			ismanager = true,
    --         },
	-- 		[4] = {
    --             name = 'Owner',
	-- 			isboss = true,
    --         },
    --     },
	-- },
    ['usedcardealer'] = {
		label = 'Larry\'s Car Sales',
        type = 'autodealer',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Intern',
            },
            [1] = {
                name = 'Salesrep',
            },
            [2] = {
                name = 'Sr. Salesrep',
            },
			[3] = {
                ismanager = true,
                name = 'Manager',
            },
			[4] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
    ['cardealer'] = {
		label = 'PDM',
        type = 'autodealer',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Intern',
            },
            [1] = {
                name = 'Salesrep',
            },
            [2] = {
                name = 'Sr. Salesrep',
            },
			[3] = {
                ismanager = true,
                name = 'Manager',
            },
			[4] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
    ['prestige'] = {
		label = 'Prestige Motors',
        type = 'autodealer',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Recruit',
            },
            [1] = {
                name = 'Employee',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
            [3] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['paletomoto'] = {
		label = 'Screamin Eagles Motorsports',
        type = 'autodealer',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Sales',
            },
			[2] = {
                name = 'Mechanic',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['boatdealer'] = {
		label = 'Get Aweigh Marina',
        type = 'autodealer',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Deck Hand',
            },
            [1] = {
                name = 'Employee',
            },
			[2] = {
                name = 'Boat Mechanic',
            },
            [3] = {
                name = 'Manager',
                ismanager = true,
            },
			[4] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
	['coltspistons'] = {
		label = 'Colts Pistons',
        type = 'mechanic',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Novice',
            },
			[2] = {
                name = 'Experienced',
            },
			[3] = {
                name = 'Advanced',
            },
			[4] = {
                name = 'Manager',
				ismanager = true,
            },
            [5] = {
                name = 'boss',
				isboss = true,
            },
        },
	},
    ['bennys'] = {
		label = 'Bennys Original Motorworks',
        type = 'mechanic',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Novice',
            },
			[2] = {
                name = 'Experienced',
            },
			[3] = {
                name = 'Advanced',
            },
			[4] = {
                name = 'Manager',
				ismanager = true,
            },
            [5] = {
                name = 'boss',
				isboss = true,
            },
        },
	},
    ['customs'] = {
        label = 'Los Santos Customs',
        type = 'mechanic',
        societyPay = true,
        basePay = 500,
        grades = {
            [0] = {
                name = 'Probationary',
            },
            [1] = {
                name = 'Employee',
            },
            [2] = {
                name = 'Stancer',
            },
            [3] = {
                name = 'Tuner',
            },
            [4] = {
                name = 'Manager',
                ismanager = true,
            },
            [5] = {
                name = 'Owner',
                isboss = true,
            },
        },
    },
    ['tuners'] = {
		label = 'LS Tuners',
        type = 'mechanic',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Novice',
            },
			[2] = {
                name = 'Experienced',
            },
			[3] = {
                name = 'Advanced',
            },
			[4] = {
                name = 'Manager',
				ismanager = true,
            },
            [5] = {
                name = 'boss',
				isboss = true,
            },
        },
	},
    ['paletoauto'] = {
		label = 'Paleto Auto Services',
        type = 'mechanic',
        societyPay = true,
        basePay = 500,
        grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Novice',
            },
			[2] = {
                name = 'Experienced',
            },
			[3] = {
                name = 'Advanced',
            },
			[4] = {
                name = 'Manager',
				ismanager = true,
            },
            [5] = {
                name = 'boss',
				isboss = true,
            },
        },
	},
    ['roxwoodauto'] = {
		label = 'Bay Areas Customs',
        type = 'mechanic',
        societyPay = true,
        basePay = 500,
        grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Novice',
            },
			[2] = {
                name = 'Experienced',
            },
			[3] = {
                name = 'Advanced',
            },
			[4] = {
                name = 'Manager',
				ismanager = true,
            },
            [5] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['underground'] = {
		label = 'The Underground',
		type = 'illegal',
        illegal = true,
        basePay = 0,
		grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Booster',
            },
			[2] = {
                name = 'Scratcher',
            },
			[3] = {
                name = 'Underboss',
				ismanager = true,
            },
			[4] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['drift'] = {
		label = 'LS Drift School',
        type = 'mechanic',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Mechanic',
            },
			[2] = {
                name = 'Instructor',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
	['trucker'] = {
		label = 'Doshi Distrubtion LLC',
        type = 'trucking',
        societyPay = true,
        basePay = 700,
        licensed = true,
		grades = {
            [0] = {
                name = 'Packer',
            },
			[1] = {
                name = 'Driver',
            },
			[2] = {
                name = 'Trucker',
            },
			[3] = {
                name = 'Long Haul Trucker',
                ismanager = true,
            },
			[4] = {
                name = 'Truck Boss',
				isboss = true,
            },

        },
	},
    ['tanker'] = {
		label = 'Ron Trucking',
        type = 'trucking',
        societyPay = true,
        basePay = 700,
		grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Trucker',
            },
			[2] = {
                name = 'Operator',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
            [4] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
	['tow'] = {
		label = 'Towing',
        type = 'tow',
        societyPay = true,
        basePay = 750,
		grades = {
            [0] = {
                name = 'Driver',
            },
			[1] = {
                name = 'Lead',
            },
			[2] = {
                name = 'Captain',
                ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
	['garbage'] = {
		label = 'City Garbage',
        type = 'garbage',
        societyPay = true,
        basePay = 200,
		grades = {
            [0] = {
                name = 'Garbage I',
            },
			[1] = {
                name = 'Garbage II',
            },
			[2] = {
                name = 'Garbage III',
            },
			[3] = {
                name = 'Garbage IV',
            },
			[4] = {
                name = 'Garbage V',
            },
        },
	},
	['burgershot'] = {
		label = 'Burger Shot',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'New Hire',
            },
			[1] = {
                name = 'Service Rep',
            },
			[2] = {
                name = 'Cook',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Boss',
				isboss = true,
            },
		},
	},
    ['dicknbaus'] = {
		label = 'DicknBaus',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'New Hire',
            },
			[1] = {
                name = 'Service Rep',
            },
			[2] = {
                name = 'Cook',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Boss',
				isboss = true,
            },
		},
	},
    ['koi'] = {
		label = 'Koi Food',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'New Hire',
            },
			[1] = {
                name = 'Service Rep',
            },
			[2] = {
                name = 'Cook',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Boss',
				isboss = true,
            },
		},
	},
    ['pizzathis'] = {
		label = 'Pizza This',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'New Hire',
            },
			[1] = {
                name = 'Service Rep',
            },
			[2] = {
                name = 'Cook',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Boss',
				isboss = true,
            },
		},
	},
    ['cluck'] = {
		label = 'Cluckin Bell',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'New Hire',
            },
			[1] = {
                name = 'Service Rep',
            },
			[2] = {
                name = 'Cook',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Boss',
				isboss = true,
            },
		},
	},
    ['coltsbuds'] = {
		label = 'Colts Buds',
        type = 'dispensary',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
			[1] = {
                name = 'Shopkeeper',
            },
			[2] = {
                name = 'Supervisor',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['weedland'] = {
		label = 'WeedLand',
        type = 'dispensary',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
			[1] = {
                name = 'Shopkeeper',
            },
			[2] = {
                name = 'Supervisor',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
	['tequilala'] = {
		label = 'Tequi-la-la',
        type = 'bar',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
				name = 'Trainee',
			},
			[1] = {
				name = 'Bar Back',
			},
			[2] = {
				name = 'Bartender',
			},
			[3] = {
				name = 'DJ',
			},
			[4] = {
				name = 'Security',
			},
            [5] = {
				name = 'Manager',
				ismanager = true,
			},
            [6] = {
				name = 'Owner',
				isboss = true,
			},
		},
	},
    ['yellowjack'] = {
		label = 'Yellowjack',
        type = 'bar',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
				name = 'Trainee',
			},
			[1] = {
				name = 'Bartender',
			},
			[2] = {
				name = 'Security',
			},
            [3] = {
				name = 'Manager',
				ismanager = true,
			},
            [4] = {
				name = 'Owner',
				isboss = true,
			},
		},
	},
    ['goldenpub'] = {
		label = 'The Golden Pub',
        type = 'bar',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
				name = 'Trainee',
			},
			[1] = {
				name = 'Cook',
			},
			[2] = {
				name = 'Bartender',
			},
			[3] = {
				name = 'DJ',
			},
			[4] = {
				name = 'Security',
			},
            [5] = {
				name = 'Manager',
				ismanager = true,
			},
            [6] = {
				name = 'Owner',
				isboss = true,
			},
		},
	},
    ['irishpub'] = {
		label = 'The Irish Pub',
        type = 'bar',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
				name = 'Trainee',
			},
			[1] = {
				name = 'Bar Back',
			},
			[2] = {
				name = 'Bartender',
			},
			[3] = {
				name = 'DJ',
			},
			[4] = {
				name = 'Security',
			},
            [5] = {
				name = 'Manager',
				ismanager = true,
			},
            [6] = {
				name = 'Owner',
				isboss = true,
			},
		},
	},
    ['club77'] = {
		label = 'Club77 Nightclub',
        type = 'bar',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
				name = 'DJ',
			},
			[1] = {
				name = 'Bartender',
			},
			[2] = {
				name = 'Bouncer',
			},
			[3] = {
				name = 'Manager',
				ismanager = true,
			},
			[4] = {
				name = 'Owner',
				isboss = true,
			},
		},
	},
    ['henhouse'] = {
		label = 'The Henhouse',
        type = 'bar',
        societyPay = true,
        basePay = 750,
		grades = {
			[0] = {
				name = 'Trainee',
			},
			[2] = {
				name = 'Bartender',
			},
			[3] = {
				name = 'Cooks',
			},
            [4] = {
				name = 'Security',
			},
			[5] = {
				name = 'Manager',
				ismanager = true,
			},
            [6] = {
                name = 'Owner',
                isboss = true,
            },
		},
	},
	['cinema'] = {
		label = 'Doppler Cinema',
        type = 'cinema',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
				name = 'Usher',
			},
			[1] = {
				name = 'Concessions',
			},
			[2] = {
				name = 'Projectionist',
			},
			[3] = {
				name = 'Manager',
				ismanager = true,
			},
			[4] = {
				name = 'Owner',
				isboss = true,
			},
		},
	},
    ['beanvine'] = {
		label = 'Vinewood Bean Machine',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
			[1] = {
                name = 'Deliverer',
			},
			[2] = {
                name = 'Cashier',
            },
			[3] = {
                name = 'Supervisor',
            },
			[4] = {
                name = 'Manager',
				ismanager = true,
			},
			[5] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['beanmarina'] = {
		label = 'Marine Beach Bean Machine',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
			[1] = {
                name = 'Deliverer',
			},
			[2] = {
                name = 'Cashier',
            },
			[3] = {
                name = 'Supervisor',
            },
			[4] = {
                name = 'Manager',
				ismanager = true,
			},
			[5] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    -- ['shenails'] = {
	-- 	label = 'shenails',
    --     type = 'clothing',
    --     societyPay = true,
    --     basePay = 500,
	-- 	grades = {
    --         [0] = {
    --             name = 'Nail Tech',
    --         },
	-- 		[1] = {
    --             name = 'Spa Tech',
    --         },
    --         [2] = {
    --             name = 'Fashion Designer',
    --         },
	-- 		[3] = {
    --             name = 'Manager',
    --             ismanager = true,
    --         },
	-- 		[4] = {
    --             name = 'Owner',
	-- 			isboss = true,
    --         },
    --     },
	-- },
    ['clothingairport'] = {
		label = 'The-Signer Bespoke Suits & Wears',
        type = 'clothing',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Field agent',
            },
            [1] = {
                name = 'Resources',
            },
            [2] = {
                name = 'Tailor',
            },
            [3] = {
                name = 'Crafter',
            },
            [4] = {
                name = 'Manager',
                ismanager = true,
            },
            [5] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
	['coltsshots'] = {
		label = 'Colts Shots',
        type = 'bar',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Probationary',
            },
			[1] = {
                name = 'Barback',
			},
			[2] = {
                name = 'Bartender',
            },
            [3] = {
                name = 'Manager',
				ismanager = true,
			},
			[4] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['casino'] = {
        label = 'Diamond Casino',
        type = 'casino',
        societyPay = true,
        basePay = 500,
        grades = {
            [0] = {
                name = 'Slot Machine Attendant',
            },
            [1] = {
                name = 'Security',
            },
            [3] = {
                name = 'Bartender',
            },
            [4] = {
                name = 'Promoter',
            },
            [5] = {
                name = 'Pit Boss',
            },
            [6] = {
                name = 'Manager',
                ismanager = true,
            },
            [7] = {
                name = 'CEO',
                isboss = true,
            },
        },
    },
	-- ['studio'] = {
	-- 	label = 'Black Diamond Records',
    --     type = 'studio',
    --     societyPay = true,
    --     basePay = 500,
	-- 	grades = {
    --         [0] = {
    --             name = 'Event Staff',
    --         },
	-- 		[1] = {
    --             name = 'DJ',
	-- 		},
	-- 		[2] = {
    --             name = 'Engineer',
	-- 		},
	-- 		[3] = {
    --             name = 'Artist',
    --         },
	-- 		[4] = {
    --             name = 'Managment',
	-- 			ismanager = true,
    --         },
	-- 		[5] = {
    --             name = 'Owner',
	-- 			isboss = true,
    --         },
    --     },
	-- },
	['vanilla'] = {
		label = 'Vanilla Unicorn',
        type = 'bar',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Dancer',
            },
			[1] = {
                name = 'Bartender',
			},
			[2] = {
                name = 'Manager',
				ismanager = true,
			},
			[3] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
	['arcade'] = {
		label = 'StarWalk Arcade',
        type = 'bar',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'New Hire',
            },
			[1] = {
                name = 'Employee',
			},
			[2] = {
                name = 'Bartender',
			},
            [3] = {
                name = 'Manager',
				ismanager = true,
			},
			[4] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
	['ammusouth'] = {
		label = 'Ammu-Nation South',
		type = 'ammo',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Employee',
			},
			[2] = {
                name = 'Manager',
				ismanager = true,
			},
			[3] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['ammusandy'] = {
		label = 'Ammu-Nation Sandy',
		type = 'ammo',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Employee',
			},
			[2] = {
                name = 'Manager',
				ismanager = true,
			},
			[3] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
	['ammuwest'] = {
		label = 'Ammu-Nation West',
		type = 'ammo',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Employee',
			},
			[2] = {
                name = 'Manager',
				ismanager = true,
			},
			[3] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
	['ammueast'] = {
		label = 'Ammu-Nation East',
		type = 'ammo',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Employee',
			},
			[2] = {
                name = 'Manager',
				ismanager = true,
			},
			[3] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['ammunorth'] = {
		label = 'Liberty Arms',
		type = 'ammo',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Recruit',
            },
            [1] = {
                name = 'Employee',
            },
			[2] = {
                name = 'Assistant Supervisor',
			},
			[3] = {
                name = 'Supervisor ',
				ismanager = true,
			},
			[4] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['ammutataviam'] = {
        label = 'Ammu-Nation Tataviam',
		type = 'ammo',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
            [1] = {
                name = 'Assistant Supervisors',
            },
			[2] = {
                name = 'Supervisors',
			},
			[3] = {
                name = 'Lead Supervisor',
				ismanager = true,
			},
			[4] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['digitalden'] = {
        label = 'Digital Den',
		type = 'electronic',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
            [1] = {
                name = 'Assistant Supervisors',
            },
			[2] = {
                name = 'Supervisors',
			},
			[3] = {
                name = 'Lead Supervisor',
				ismanager = true,
			},
			[4] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['ammulamesa'] = {
        label = 'Ammu-Nation La Mesa',
		type = 'ammo',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
            [1] = {
                name = 'Assistant Supervisors',
            },
			[2] = {
                name = 'Supervisors',
			},
			[3] = {
                name = 'Lead Supervisor',
				ismanager = true,
			},
			[4] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['ammuchumash'] = {
		label = 'Ammu-Nation Chumash',
		type = 'ammo',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Shop Keeper',
            },
			[1] = {
                name = 'Senior Shopkeeper',
			},
			[2] = {
                name = 'Manager',
				ismanager = true,
			},
			[3] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['ammupaleto'] = {
		label = 'Ammu-Nation Paleto',
		type = 'ammo',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Employee',
			},
			[2] = {
                name = 'Manager',
				ismanager = true,
			},
			[3] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['ammumorningwood'] = {
		label = 'Ammu-Nation MorningWood',
		type = 'ammo',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Recruit',
            },
			[1] = {
                name = 'Employee',
			},
			[2] = {
                name = 'Manager',
				ismanager = true,
			},
			[3] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['corretto'] = {
		label = 'Cafe Corretto',
		type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
			[1] = {
                name = 'Server',
			},
            [2] = {
                name = 'Cook',
			},
			[3] = {
                name = 'Manager',
				ismanager = true,
			},
			[4] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['honeybakery'] = {
		label = 'Honey Bun Bakery',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
			[1] = {
                name = 'Server',
			},
            [2] = {
                name = 'Cook',
			},
			[3] = {
                name = 'Manager',
				ismanager = true,
			},
			[4] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['uwucatfe'] = {
		label = 'UWU Catfe',
		type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Kitten',
            },
			[1] = {
                name = 'Purrista',
			},
            [2] = {
                name = 'Catfe Lead',
			},
            [3] = {
                name = 'Catfe Claws',
			},
			[4] = {
                name = 'Meownager',
				ismanager = true,
			},
			[5] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    -- ['homie'] = {
	-- 	label = 'Homie Hookup',
    --     type = 'resturaunt',
    --     societyPay = true,
    --     basePay = 500,
	-- 	grades = {
	-- 		[0] = {
    --             name = 'New Hire',
    --         },
    --         [1] = {
    --             name = 'Employee',
    --         },
	-- 		[2] = {
    --             name = 'Service Rep',
    --         },
	-- 		[3] = {
    --             name = 'Manager',
	-- 			ismanager = true,
    --         },
	-- 		[4] = {
    --             name = 'Boss',
	-- 			isboss = true,
    --         },
	-- 	},
	-- },
    ['noodle'] = {
		label = 'Noodle Exchange',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
			[1] = {
                name = 'Server',
			},
            [2] = {
                name = 'Cook',
			},
            [3] = {
				name = 'Head Cook',
			},
            [4] = {
				name = 'Security',
			},
			[5] = {
                name = 'Manager',
				ismanager = true,
			},
			[6] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['pops'] = {
		label = 'Pop\'s Diner',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
			[1] = {
                name = 'Server',
			},
            [2] = {
                name = 'Cook',
			},
			[3] = {
                name = 'Manager',
				ismanager = true,
			},
			[4] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['tacofarmer'] = {
		label = 'Taco Farmer',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
            [1] = {
                name = 'Server',
            },
			[2] = {
                name = 'Cook',
			},
			[3] = {
                name = 'Manager',
				ismanager = true,
			},
			[4] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['deli'] = {
		label = 'DeLuca Deli',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
            [1] = {
                name = 'Server',
            },
			[2] = {
                name = 'Cook',
			},
			[3] = {
                name = 'Manager',
				ismanager = true,
			},
			[4] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['hookies'] = {
		label = 'Hookies',
        type = 'broker',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Sportsman',
            },
			[1] = {
                name = 'Employee',
			},
			[2] = {
                name = 'Asst. Manager',
				ismanager = true,
			},
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
            [4] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['huntsman'] = {
		label = 'The Huntsman',
        type = 'ammo',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Sportsman',
            },
			[1] = {
                name = 'Employee',
			},
			[2] = {
                name = 'Asst. Manager',
				ismanager = true,
			},
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
            [4] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['airline'] = {
		label = 'White Line Airways',
        type = 'air',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Trainee',
            },
            [1] = {
                name = 'Security',
            },
			[2] = {
                name = 'Travel Agent',
			},
			[3] = {
                name = 'Flight Crew',
			},
			[4] = {
                name = 'Assistant Flying Instructor',
            },
            [5] = {
                name = 'Certified Flying Instructor',
            },
            [6] = {
                name = 'Chief Pilot',
            },
            [7] = {
                name = 'Chief Operating Officer',
                ismanager = true,
            },
            [8] = {
                name = 'Chief Executive Officer',
				isboss = true,
            },
        },
	},
	['pawnshop'] = {
		label = 'Davis Pawn Shop',
        type = 'broker',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'Stocker',
            },
            [1] = {
                name = 'Employee',
            },
			[2] = {
                name = 'Clerk',
            },
            [3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Boss',
				isboss = true,
			},
        },
	},
    ['northpawn'] = {
		label = 'North Pawn',
        type = 'broker',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'Employee',
            },
            [1] = {
                name = 'Clerk',
            },
			[2] = {
                name = 'Expert',
                ismanager = true,
            },
            [3] = {
                name = 'General Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Owner',
				isboss = true,
			},
        },
	},
    ['sandypawn'] = {
		label = 'Sandy Pawn',
        type = 'broker',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'Stocker',
            },
            [1] = {
                name = 'Employee',
            },
			[2] = {
                name = 'Clerk',
            },
            [3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Boss',
				isboss = true,
			},
        },
	},
    ['paletopawn'] = {
		label = 'Paleto Pawn',
        type = 'broker',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'Stocker',
            },
            [1] = {
                name = 'Employee',
            },
			[2] = {
                name = 'Clerk',
            },
            [3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Boss',
				isboss = true,
			},
        },
	},
    ['gasstation1'] = {
		label = 'Xero Gas Little Seoul',
        type = 'gas',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'Recruit',
            },
            [1] = {
                name = 'Cashier',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
			},
        },
	},
    ['gasstation2'] = {
		label = 'LTD Gas Little Seoul',
        type = 'gas',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'Recruit',
            },
            [1] = {
                name = 'Cashier',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
			},
        },
	},
    ['gasstation3'] = {
		label = 'LTD Gas Grove Street',
        type = 'gas',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'Recruit',
            },
            [1] = {
                name = 'Cashier',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
			},
        },
	},
    ['gasstation4'] = {
		label = 'LTD Strawberry Gas',
        type = 'gas',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'Recruit',
            },
            [1] = {
                name = 'Cashier',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
			},
        },
	},
    ['gasstation5'] = {
		label = 'Don\'s Country Store',
        type = 'gas',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'Recruit',
            },
            [1] = {
                name = 'Cashier',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
			},
        },
	},
    ['gasstation6'] = {
		label = 'LTD Morning Wood Gas',
        type = 'gas',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'Recruit',
            },
            [1] = {
                name = 'Cashier',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
			},
        },
	},
    ['pearlfuel'] = {
		label = 'Neptunes Fuel',
        type = 'gas',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'Recruit',
            },
            [1] = {
                name = 'Cashier',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
			},
        },
	},
    ['banker'] = {
		label = 'Maze Bank',
        type = 'bank',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Teller',
            },
			[1] = {
                name = 'Loan Officer',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['storage'] = {
		label = 'Los Santos Storage',
        type = 'storage',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
			[1] = {
                name = 'Manager',
				ismanager = true,
            },
			[2] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
    ['lsgym'] = {
		label = 'Pump & Run Gym',
        type = 'gym',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'Member',
            },
            [1] = {
                name = 'Employee',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
			},
        },
	},
    ['coltsjewels'] = {
		label = 'Colts Family Jewels',
        type = 'jewelry',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Sales Person',
            },
			[1] = {
                name = 'Jewel Smith',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['xgems'] = {
		label = 'XGems Jewelry',
        type = 'jewelry',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Sales Person',
            },
			[1] = {
                name = 'Jewel Smith',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['vangelico'] = {
		label = 'Vangelico Jewelry',
		type = 'jewelry',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Sales Person',
            },
			[1] = {
                name = 'Jewel Smith',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['comedy'] = {
		label = 'Split Sides Comedy Club',
		type = 'bar',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Bartender / DJ',
            },
			[1] = {
                name = 'Security',
			},
			[2] = {
                name = 'Manager',
				ismanager = true,
			},
			[3] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['kart'] = {
		label = 'Slipstream Racing',
		type = 'automotive',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Cashier',
            },
			[2] = {
                name = 'Pit Crew',
			},
            [3] = {
                name = 'Crew Lead',
			},
			[4] = {
                name = 'Manager',
			},
			[5] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['winery'] = {
		label = 'Winery',
        type = 'bar',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
				name = 'Trainee',
			},
			[1] = {
				name = 'Employee',
			},
			[2] = {
				name = 'Senior employee',
			},
            [3] = {
				name = 'Management',
				ismanager = true,
			},
            [4] = {
				name = 'Owner',
				isboss = true,
			},
		},
	},
    ['blackmarket'] = {
		label = 'Black Market',
		type = 'illegal',
        illegal = true,
        licensed = true,
		grades = {
            [0] = {
                name = 'Worker',
			},
			[1] = {
                name = 'Manager',
                ismanager = true,
			},
			[2] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['beachoffice'] = {
		label = 'Los Santos luxe Events',
		type = 'event',
        societyPay = true,
        basePay = 900,
		grades = {
            [0] = {
                name = 'Security',
            },
            [1] = {
                name = 'Photographer',
            },
            [2] = {
                name = 'Event Coordinator',
            },
            [3] = {
                name = 'Manager',
                ismanager = true,
            },
            [4] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
    ['rehab'] = {
		label = 'Parsons Rehabilitation Center',
		type = 'ems',
        societyPay = true,
        basePay = 1000,
		grades = {
            [0] = {
                name = 'Receptionist',
            },
            [1] = {
                name = 'Therapist',
            },
            [2] = {
                name = 'Psychologist',
            },
            [3] = {
                name = 'Manager',
                ismanager = true,
            },
            [4] = {
                name = 'Boss',
				isboss = true,
            }
        },
	},
    ['comic'] = {
		label = 'Hardcore Comics',
		type = 'broker',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Dungeon Master',
            },
            [1] = {
                name = 'Dungeon Keeper',
            },
            [2] = {
                name = 'Employee',
            },
			[3] = {
                name = 'Assistant Manager',
			},
			[4] = {
                name = 'Manager',
				ismanager = true,
			},
			[5] = {
                name = 'CEO',
				isboss = true,
            },
        },
	},
    ['uwu'] = {
		label = 'UWU Cafe',
		type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
            [1] = {
                name = 'Server',
            },
			[2] = {
                name = 'Cook',
			},
			[3] = {
                name = 'Manager',
				ismanager = true,
			},
			[4] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['pearls'] = {
		label = 'Pearls',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Sportsman',
            },
			[1] = {
                name = 'Employee',
			},
			[2] = {
                name = 'Asst. Manager',
				ismanager = true,
			},
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
            [4] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['lscf'] = {
		label = 'Spartan Arsenal',
        type = 'ammo',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'recruit',
            },
			[1] = {
                name = 'Employee',
            },
			[2] = {
                name = 'Gunsmith',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
    ['distro'] = {
		label = 'LS Distribution',
        type = 'distro',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Worker',
            },
			[1] = {
                name = 'Longshoreman',
            },
			[2] = {
                name = 'Driver',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Boss',
                isboss = true,
            },
        },
	},
    ['radio'] = {
		label = 'WFAM Studios',
        type = 'radio',
        societyPay = true,
        basePay = 750,
		grades = {
			[0] = {
                name = 'Intern',
            },
			[1] = {
                name = 'Security',
            },
			[2] = {
                name = 'Camera Operator',
            },
			[3] = {
                name = 'Secretary',
            },
            [4] = {
                name = 'News Reporter',
            },
            [5] = {
                name = 'On Air Personality',
            },
            [6] = {
                name = 'Manager',
				ismanager = true,
            },
            [7] = {
                name = 'Station Owner',
                isboss = true,
            },
        },
	},
    ['chumashpawn'] = {
		label = 'Chumash Pawn',
        type = 'broker',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
			[1] = {
                name = 'Manager',
				ismanager = true,
            },
			[2] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
    ['studio2'] = {
		label = 'Rockford Records',
        type = 'studio',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Event Staff',
            },
			[1] = {
                name = 'DJ',
			},
			[2] = {
                name = 'Engineer',
			},
			[3] = {
                name = 'Artist',
            },
			[4] = {
                name = 'Managment',
				ismanager = true,
            },
			[5] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['church'] = {
		label = 'St. Rose Church',
        type = 'organization',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Usher',
            },
			[1] = {
                name = 'Acolyte',
            },
			[2] = {
                name = 'Reverend',
            },
            [3] = {
                name = 'Cardinal',
				ismanager = true,
            },
            [4] = {
                name = 'Archbishop',
                isboss = true,
            },
        },
	},
    ['angels'] = {
		label = 'Eco Craft Recycling',
        type = 'recycling',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Contractor',
            },
            [1] = {
                name = 'Employee',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
    ['roxwoodrecycling'] = {
		label = 'Marine Beach Recycling',
        type = 'recycling',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Contractor',
            },
            [1] = {
                name = 'Employee',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
    ['forge'] = {
		label = 'Forgeworks',
        type = 'broker',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Employee',
            },
			[1] = {
                name = 'Manager',
				ismanager = true,
            },
			[2] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
    ['rendezvous'] = {
        label = 'The Rendezvous',
        type = 'bar',
        societyPay = true,
        basePay = 500,
        grades = {
            [0] = {
                name = 'Bartender',
            },
            [1] = {
                name = 'Manager',
                ismanager = true,
            },
            [2] = {
                name = 'Owner',
                isboss = true,
            },
        },
    },
    ['bloodbank'] = {
        label = 'Giving in Vein',
        type = 'bloodbank',
        societyPay = true,
        basePay = 500,
        grades = {
            [0] = {
                name = 'Phlebotomis',
            },
            [1] = {
                name = 'SR. Phlebotomis',
            },
            [2] = {
                name = 'Manager',
                ismanager = true,
            },
            [3] = {
                name = 'Owner',
                isboss = true,
            },
        },
    },
    ['mine'] = {
        label = 'Atlas Mining',
        type = 'mine',
        societyPay = true,
        basePay = 500,
        grades = {
            [0] = {
                name = 'Miner',
            },
            [1] = {
                name = 'Advanced Miner',
            },
            [2] = {
                name = 'Foreman',
                ismanager = true,
            },
            [3] = {
                name = 'Boss',
                isboss = true,
            },
        }
    },
    ['hookah'] = {
		label = 'Hookah Lounge',
        type = 'bar',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'Grower',
            },
            [1] = {
                name = 'Hookah Amateur',
            },
            [2] = {
                name = 'Hookah Expert',
				ismanager = true,
            },
			[3] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
    ['farm'] = {
		label = 'Union Farm',
        type = 'farm',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Farm Hand',
            },
            [1] = {
                name = 'Farm Worker',
            },
			[2] = {
                name = 'Foreman',
				ismanager = true,
            },
			[3] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
    ['carwash'] = {
		label = 'Ronnie\'s Car Wash',
		type = 'carwash',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Trainee',
            },
            [1] = {
                name = 'Employee',
            },
            [2] = {
                name = 'Senior Employee',
            },
            [3] = {
                name = 'Manager',
                ismanager = true,
            },
            [4] = {
                name = 'Owner',
                isboss = true,
            },
        },
	},
    ['blacklantern'] = {
        label = 'The Black Lantern',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
        grades = {
            [0] = {
                name = 'Greenhorn',
            },
			[1] = {
                name = 'Employee',
			},
			[2] = {
                name = 'Bar Wench',
            },
			[3] = {
                name = 'Coosie',
            },
			[4] = {
                name = 'Tavernmaster',
				ismanager = true,
			},
			[5] = {
                name = 'Owner',
				isboss = true,
            },
        },
    },
    ['sunsetbleach'] = {
		label = 'Sunset Bleach Cleaning Services',
		type = 'cleaner',
        societyPay = true,
        basePay = 600,
		grades = {
            [0] = {
                name = 'Runners',
            },
            [1] = {
                name = 'Chemist',
            },
            [2] = {
                name = 'Street Doc',
                ismanager = true,
            },
            [3] = {
                name = 'The Hood Doctor',
                isboss = true,
            },
        },
	},
    ['taxi'] = {
		label = 'Taxi',
        type = 'taxi',
        societyPay = true,
        basePay = 750,
		grades = {
            [0] = {
                name = 'Taxi Recruit',
            },
			[1] = {
                name = 'Taxi Driver',
            },
			[2] = {
                name = 'Taxi Manager ',
                ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
            },
        },
	},
    ['library'] = {
		label = 'Ash & Ink Archives',
        type = 'library',
        societyPay = true,
        basePay = 575,
		grades = {
            [0] = {
                name = 'Organizer',
            },
			[1] = {
                name = 'Writer',
            },
			[2] = {
                name = 'Archivist',
                ismanager = true,
            },
			[3] = {
                name = 'Librarian',
				isboss = true,
            },
        },
	},
    ['precision'] = {
		label = 'Precision Firearms',
        type = 'ammo',
        societyPay = true,
        basePay = 575,
		grades = {
            [0] = {
                name = 'Scavenger',
            },
			[1] = {
                name = 'Employee',
            },
			[2] = {
                name = 'Gunsmith',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Owner',
                isboss = true,
            },
        },
    },
    ['manamart'] = {
		label = 'Mana Mart',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
            [0] = {
                name = 'Rookie',
            },
			[1] = {
                name = 'Salesperson',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
			},
			[3] = {
                name = 'Owner',
				isboss = true,
            },
        },
	},
    ['atom'] = {
		label = 'Up-n-Atom',
        type = 'resturaunt',
        societyPay = true,
        basePay = 500,
		grades = {
			[0] = {
                name = 'New Hire',
            },
			[1] = {
                name = 'Service Rep',
            },
			[2] = {
                name = 'Cook',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Boss',
				isboss = true,
            },
		},
	},
    ['atlasadventure'] = {
		label = 'Atlas Adventure',
        type = 'ammo',
        societyPay = true,
        basePay = 550,
		grades = {
			[0] = {
                name = 'New Hire',
            },
			[1] = {
                name = 'Service Rep',
            },
			[2] = {
                name = 'Manager',
				ismanager = true,
            },
			[3] = {
                name = 'Boss',
				isboss = true,
            },
		},
	},
    ['animalark'] = {
		label = 'Animal Ark',
        type = 'ems',
        societyPay = true,
        basePay = 900,
		grades = {
			[0] = {
                name = 'New Hire',
            },
			[1] = {
                name = 'Service Rep',
            },
            [2] = {
                name = 'Trainer',
            },
			[3] = {
                name = 'Manager',
				ismanager = true,
            },
			[4] = {
                name = 'Head Veterinarian',
				isboss = true,
            },
		},
	},
    
}
