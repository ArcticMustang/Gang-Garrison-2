if disguised && global.myself.team!=team && global.myself.team!=TEAM_SPECTATOR{
mask_index=SpyRedS;
quote_y_offset=0
    switch disguiseTeam{
        case TEAM_RED:
            switch disguiseClass{
                case CLASS_SCOUT:
                sprite_index=ScoutRedS
                spriteRun = ScoutRedRunS;
                spriteJump = ScoutRedJumpS;
                spriteStand = ScoutRedStandS;
                spriteLeanR = ScoutRedLeanRS;
                spriteLeanL = ScoutRedLeanLS;
                disguiseClassName="Runner"
                runPower = 1.08;
                noNewAnim=false
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=3;
                yoffset=-6;
                sprite_index=ScattergunS
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            }
                depth=-1
                }
                }
                break;
                case CLASS_PYRO:
                noNewAnim=false
                sprite_index=PyroRedS
                spriteRun = PyroRedRunS;
                spriteJump = PyroRedJumpS;
                spriteStand = PyroRedStandS;
                spriteLeanR = PyroRedLeanRS;
                spriteLeanL = PyroRedLeanLS;
                disguiseClassName="Firebug"
                runPower = 1.08;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=-3;
                yoffset=6;
                sprite_index=FlamethrowerS
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            }
                depth=-1
                }
                }
                break;
                case CLASS_SOLDIER:
                noNewAnim=false
                sprite_index=SoldierRedS
                spriteRun = SoldierRedRunS;
                spriteJump = SoldierRedJumpS;
                spriteStand = SoldierRedStandS;
                spriteLeanR = SoldierRedLeanRS;
                spriteLeanL = SoldierRedLeanLS;
                disguiseClassName="Rocketman"
                runPower = .9;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=-5;
                yoffset=-4;
                sprite_index=RocketlauncherS
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            }
                depth=-1
                }
                }
                break;
                case CLASS_HEAVY:
                noNewAnim=false
                sprite_index=HeavyRedS
                spriteRun = HeavyRedRunS;
                spriteJump = HeavyRedJumpS;
                spriteStand = HeavyRedStandS;
                spriteLeanR = HeavyRedLeanRS;
                spriteLeanL = HeavyRedLeanLS;
                disguiseClassName="Overweight"
                runPower = 0.8;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=3;
                yoffset=3;
                sprite_index=MinigunS
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            }
                depth=-1
                }
                }
                break;
                case CLASS_DEMOMAN:
                noNewAnim=false
                sprite_index = DemomanRedS;
                spriteRun = DemomanRedRunS;
                spriteJump = DemomanRedJumpS;
                spriteStand = DemomanRedStandS;
                spriteLeanR = DemomanRedLeanRS;
                spriteLeanL = DemomanRedLeanLS;
                disguiseClassName="Detonator"
                runPower = 1;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=0;
                yoffset=3;
                sprite_index=MinegunS
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            }
                depth=-1
                }
                }
                break;
                case CLASS_MEDIC:
                noNewAnim=false
                sprite_index=MedicRedS
                spriteRun = MedicRedRunS;
                spriteJump = MedicRedJumpS;
                spriteStand = MedicRedStandS;
                spriteLeanR = MedicRedLeanRS;
                spriteLeanL = MedicRedLeanLS;
                disguiseClassName="Healer"
                runPower = 1.08;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=1;
                yoffset=2;
                sprite_index=MedigunS
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            }
                depth=-1
                }
                }
                break;
                case CLASS_ENGINEER:
                noNewAnim=false
                sprite_index=EngineerRedS
                spriteRun = EngineerRedRunS;
                spriteJump = EngineerRedJumpS;
                spriteStand = EngineerRedStandS;
                spriteLeanR = EngineerRedLeanRS;
                spriteLeanL = EngineerRedLeanLS;
                disguiseClassName="Constructor"
                runPower = 1;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=3;
                yoffset=-3;
                sprite_index=ShotgunS
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            }
                depth=-1
                }
                }
                break;
                case CLASS_SPY:
                noNewAnim=false
                sprite_index=SpyRedS
                spriteRun = SpyRedRunS;
                spriteJump = SpyRedJumpS;
                spriteStand = SpyRedStandS;
                spriteLeanR = SpyRedLeanRS;
                spriteLeanL = SpyRedLeanLS;
                disguiseClassName="Infiltrator"
                if player.team=TEAM_RED disguised=false
                runPower = 1.08;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            }
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            };
                depth=-1
                }
                }
                break;
                case CLASS_SNIPER:
                noNewAnim=false
                sprite_index=SniperRedS;
                spriteRun = SniperRedRunS;
                spriteJump = SniperRedJumpS;
                spriteStand = SniperRedStandS;
                spriteLeanR = SniperRedLeanRS;
                spriteLeanL = SniperRedLeanLS;
                disguiseClassName="Rifleman"
                runPower = 0.9;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=-1;
                yoffset=-4;
                sprite_index=RifleS;
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            };
                depth=-1
                }
                }
                break;
                case CLASS_QUOTE:
                sprite_index=SpyQuoteS;
                sprite=SpyQuoteS;
                spriteRun = SpyQuoteS;
                spriteJump = SpyQuoteS;
                spriteStand = SpyQuoteS;
                spriteLeanR = SpyQuoteS;
                spriteLeanL = SpyQuoteS;
                disguiseClassName="Ninja Cat"
                quote_y_offset=12
                noNewAnim=true
                runPower = 1.07;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=5;
                yoffset=21-7;
                sprite_index=BladeS;
                depth=1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            };
                depth=-1
                }
                }
            }
                break;                       
        case TEAM_BLUE:
            switch disguiseClass{
                case CLASS_SCOUT:
                noNewAnim=false
                sprite_index=ScoutBlueS;
                spriteRun = ScoutBlueRunS;
                spriteJump = ScoutBlueJumpS;
                spriteStand = ScoutBlueStandS;
                spriteLeanR = ScoutBlueLeanRS;
                spriteLeanL = ScoutBlueLeanLS;
                disguiseClassName="Runner"
                runPower = 1.08;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=3;
                yoffset=-6;
                sprite_index=ScattergunS;
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            };
                depth=-1
                }
                }
                break;
                case CLASS_PYRO:
                noNewAnim=false
                sprite_index=PyroBlueS;
                spriteRun = PyroBlueRunS;
                spriteJump = PyroBlueJumpS;
                spriteStand = PyroBlueStandS;
                spriteLeanR = PyroBlueLeanRS;
                spriteLeanL = PyroBlueLeanLS;
                disguiseClassName="Firebug"
                runPower = 1.08;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=-3;
                yoffset=6;
                sprite_index=FlamethrowerS;
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            };
                depth=-1
                }
                }
                break;
                case CLASS_SOLDIER:
                noNewAnim=false
                sprite_index=SoldierBlueS;
                spriteRun = SoldierBlueRunS;
                spriteJump = SoldierBlueJumpS;
                spriteStand = SoldierBlueStandS;
                spriteLeanR = SoldierBlueLeanRS;
                spriteLeanL = SoldierBlueLeanLS;
                disguiseClassName="Rocketman"
                runPower = .9;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=-5;
                yoffset=-4;
                sprite_index=RocketlauncherS;
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            };
                depth=-1
                }
                }
                break;
                case CLASS_HEAVY:
                noNewAnim=false
                sprite_index=HeavyBlueS;
                spriteRun = HeavyBlueRunS;
                spriteJump = HeavyBlueJumpS;
                spriteStand = HeavyBlueStandS;
                spriteLeanR = HeavyBlueLeanRS;
                spriteLeanL = HeavyBlueLeanLS;
                disguiseClassName="Overweight"
                runPower = 0.8;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=3;
                yoffset=3;
                sprite_index=MinigunS;
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            };
                depth=-1
                }
                }
                break;
                case CLASS_DEMOMAN:
                noNewAnim=false
                sprite_index=DemomanBlueS;
                spriteRun = DemomanBlueRunS;
                spriteJump = DemomanBlueJumpS;
                spriteStand = DemomanBlueStandS;
                spriteLeanR = DemomanBlueLeanRS;
                spriteLeanL = DemomanBlueLeanLS;
                disguiseClassName="Detonator"
                runPower = 1;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=0;
                yoffset=3;
                sprite_index=MinegunS;
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            };
                depth=-1
                }
                }
                break;
                case CLASS_MEDIC:
                noNewAnim=false
                sprite_index=MedicBlueS;
                spriteRun = MedicBlueRunS;
                spriteJump = MedicBlueJumpS;
                spriteStand = MedicBlueStandS;
                spriteLeanR = MedicBlueLeanRS;
                spriteLeanL = MedicBlueLeanLS;
                disguiseClassName="Healer"
                runPower = 1.08;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=1;
                yoffset=2;
                sprite_index=MedigunS;
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            };
                depth=-1
                }
                }
                break;
                case CLASS_ENGINEER:
                noNewAnim=false
                sprite_index=EngineerBlueS;
                spriteRun = EngineerBlueRunS;
                spriteJump = EngineerBlueJumpS;
                spriteStand = EngineerBlueStandS;
                spriteLeanR = EngineerBlueLeanRS;
                spriteLeanL = EngineerBlueLeanLS;
                disguiseClassName="Constructor"
                runPower = 1;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=3;
                yoffset=-3;
                sprite_index=ShotgunS;
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            };
                depth=-1
                }
                }
                break;
                case CLASS_SPY:
                noNewAnim=false
                sprite_index=SpyBlueS
                spriteRun = SpyBlueRunS;
                spriteJump = SpyBlueJumpS;
                spriteStand = SpyBlueStandS;
                spriteLeanR = SpyBlueLeanRS;
                spriteLeanL = SpyBlueLeanLS;
                disguiseClassName="Spy"
                if player.team=TEAM_BLUE disguised=false
                runPower = 1.08;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            };
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            };
                depth=-1
                }
                }
                break;
                case CLASS_SNIPER:
                noNewAnim=false
                sprite_index=SniperBlueS;
                spriteRun = SniperBlueRunS;
                spriteJump = SniperBlueJumpS;
                spriteStand = SniperBlueStandS;
                spriteLeanR = SniperBlueLeanRS;
                spriteLeanL = SniperBlueLeanLS;
                disguiseClassName="Rifleman"
                runPower = 0.9;
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=-1;
                yoffset=-4;
                sprite_index=RifleS;
                depth=-1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            }
                depth=-1
                }
                }
                break;
                case CLASS_QUOTE:
                noNewAnim=true
                sprite_index=SpyCurlyS;
                spriteRun = SpyCurlyS;
                spriteJump = SpyCurlyS;
                spriteStand = SpyCurlyS;
                spriteLeanR = SpyCurlyS
                spriteLeanL = SpyCurlyS;
                disguiseClassName="Ninja Cat"
                runPower = 1.07;
                quote_y_offset=12
                with currentWeapon{
                if global.myself.team!=ownerPlayer.team{
                xoffset=5;
                yoffset=21-7;
                sprite_index=BladeS;
                depth=1
                }else{
                xoffset=-4;
                yoffset=0;
                if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            }
                depth=-1
                }
                }                           
                
            }
        break;
    }
}else if player.class=CLASS_SPY{
    if stabbing=false{
        runPower = 1.08;
        if team=TEAM_RED{
            sprite_index=SpyRedS
            noNewAnim=false
            spriteRun = SpyRedRunS;
            spriteJump = SpyRedJumpS;
            spriteStand = SpyRedStandS;
            spriteLeanR = SpyRedLeanRS;
            spriteLeanL = SpyRedLeanLS;
        }else{
            sprite_index=SpyBlueS
            noNewAnim=false
            spriteRun = SpyBlueRunS;
            spriteJump = SpyBlueJumpS;
            spriteStand = SpyBlueStandS;
            spriteLeanR = SpyBlueLeanRS;
            spriteLeanL = SpyBlueLeanLS;
        }
        with currentWeapon{
            xoffset=-4;
            yoffset=0;
            if!justShot && readyToShoot{
            sprite_index=normalSprite;
            }else if alarm[6]>0{
            sprite_index=recoilSprite;
            }
            depth=-1
        }
    }
mask_index=SpyRedS;   
}
