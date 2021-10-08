import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity("M_CONFIG")
export class ConfigEntity {
    @PrimaryGeneratedColumn()
    CONFIG_ID: number;

    @Column()
    TELEGRAM_TOKEN: string;

    @Column()
    DEV_ID: string;

    @Column()
    COMPANY_NAME: string;

    @Column()
    BOT_NAME: string;

    @Column()
    IS_MAINTENANCE: number;

    @Column()
    IS_DEFAULT: number;
}