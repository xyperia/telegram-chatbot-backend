import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity("M_MENU")
export class MenuEntity {
    @PrimaryGeneratedColumn()
    ID: string;

    @Column()
    TITLE: string;

    @Column()
    CONTENT: string;

    @Column()
    KEYWORD: string;

    @Column()
    IS_MAINMENU: number;

    @Column()
    IS_LASTMENU: number;

    @Column()
    IS_ENABLED: number;

    @Column()
    VISITOR: number;

    URUTAN: string;
}