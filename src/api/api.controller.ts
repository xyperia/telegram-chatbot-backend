import { Get, Controller, Res, HttpStatus } from '@nestjs/common';
import { TelegramBotService } from './telegram-bot/telegram-bot.service';

@Controller()
export class ApiController {
  constructor(
    private readonly telegramBotService: TelegramBotService
    ) {}

  @Get()
  getBotDialog(@Res() res) {
    this.telegramBotService.botMessage();
    res.status(HttpStatus.OK).send("Bot service started");
  }
}
