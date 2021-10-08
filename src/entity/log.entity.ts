import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity("M_LOG")
export class LogEntity {
    @PrimaryGeneratedColumn()
    LOG_ID: number;

    @Column()
    SENDER_ID: number;

    @Column()
    SENDER_USERNAME: string;

    @Column()
    SENDER_NICK: string;

    @Column()
    MSG: string;

    @Column()
    RESPONSE: string;

    @Column()
    TIMESTAMP: number;
}