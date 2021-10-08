import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity("V_LOG")
export class LogViewEntity {
    @PrimaryGeneratedColumn()
    SENDER_ID: number;

    @Column()
    SENDER_USERNAME: string;

    @Column()
    SENDER_NICK: string;
}